// SPDX-License-Identifier: GPL-2.0
/*	MPTCP IoDS Scheduler
 *
 *	Algorithm Design and Implementation:
 *	...
 *
 *	This program is free software; you can redistribute it and/or
 *	modify it under the terms of the GNU General Public License
 *	as published by the Free Software Foundation; either version
 *	2 of the License, or (at your option) any later version.
 */

#include <linux/module.h>
#include <net/mptcp.h>

u32  beta = -10000;
static unsigned int mptcp_iods_r_beta __read_mostly = 4; /* beta = 1/r_beta = 0.25 */
module_param(mptcp_iods_r_beta, int, 0644);
MODULE_PARM_DESC(mptcp_iods_r_beta, "beta for IoDS");

struct iodssched_priv {
	u32 last_rbuf_opti;
};

struct iodssched_cb {
	u32 switching_margin; /* this is "waiting" in algorithm description */
};

static struct iodssched_priv *iodssched_get_priv(const struct tcp_sock *tp)
{
	return (struct iodssched_priv *)&tp->mptcp->mptcp_sched[0];
}

static struct iodssched_cb *iodssched_get_cb(const struct tcp_sock *tp)
{
	return (struct iodssched_cb *)&tp->mpcb->mptcp_sched[0];
}

/* This is the IoDS scheduler. This algorithm decides on which subflow to send
 * a given MSS. If all subflows are found to be busy or the currently selected
 * subflow is estimated to create out-of-order delivery, NULL is returned.
 */
static struct sock *iods_get_available_subflow(struct sock *meta_sk,
					      struct sk_buff *skb,
					      bool zero_wnd_test)
{
	struct mptcp_cb *mpcb = tcp_sk(meta_sk)->mpcb;
	struct sock *bestsk, *minsk = NULL;
	struct tcp_sock *besttp;
	struct mptcp_tcp_sock *mptcp;
	struct iodssched_cb *iods_cb = iodssched_get_cb(tcp_sk(meta_sk));
	u32 min_srtt = U32_MAX;
	u32 sub_sndbuf = 0;
	u32 sub_packets_out = 0;

	/* Answer data_fin on same subflow!!! */
	if (meta_sk->sk_shutdown & RCV_SHUTDOWN &&
	    skb && mptcp_is_data_fin(skb)) {
		mptcp_for_each_sub(mpcb, mptcp) {
			bestsk = mptcp_to_sock(mptcp);

			if (tcp_sk(bestsk)->mptcp->path_index == mpcb->dfin_path_index &&
			    mptcp_is_available(bestsk, skb, zero_wnd_test))
				return bestsk;
		}
	}

	/* First, find the overall best (fastest) subflow */
	mptcp_for_each_sub(mpcb, mptcp) {
		bestsk = mptcp_to_sock(mptcp);
		besttp = tcp_sk(bestsk);

		/* Set of states for which we are allowed to send data */
		if (!mptcp_sk_can_send(bestsk))
			continue;

		/* We do not send data on this subflow unless it is
		 * fully established, i.e. the 4th ack has been received.
		 */
		if (besttp->mptcp->pre_established)
			continue;

		sub_sndbuf += bestsk->sk_wmem_queued;
		sub_packets_out += besttp->packets_out;

		/* record minimal rtt */
		if (besttp->srtt_us < min_srtt) {
			min_srtt = besttp->srtt_us;
			minsk = bestsk;
		}
	}

	/* find the current best subflow according to the default scheduler */
	bestsk = get_available_subflow(meta_sk, skb, zero_wnd_test);

	/* if we decided to use a slower flow, we have the option of not using it at all */
	if (bestsk && minsk && bestsk != minsk) {
		u32 mss = tcp_current_mss(bestsk); /* assuming equal MSS */
		u32 sndbuf_meta = meta_sk->sk_wmem_queued;
		u32 sndbuf_minus = sub_sndbuf;
		u32 sndbuf = 0;
		
		u32 rtt_avg = 0;
		u32  alpha;

		// Calculation of the RTTs for subflows in order to divide them into fast and slow ones.
		u32 srtt_f = tcp_sk(minsk)->srtt_us >> 3;
		u32 srtt_s = tcp_sk(bestsk)->srtt_us >> 3;

		// Calculation of the RTTs average ad alpha for the subflows.
		rtt_avg = (srtt_f + srtt_s)/2;
		alpha =  (srtt_f/srtt_s);


		if (tcp_sk(meta_sk)->packets_out > sub_packets_out)
			sndbuf_minus += (tcp_sk(meta_sk)->packets_out - sub_packets_out) * mss;

		if (sndbuf_meta > sndbuf_minus)
			sndbuf = sndbuf_meta - sndbuf_minus;

		/* we have something to send.
		 * at least one time tx over fastest subflow is required
		 */

		// Calculation of beta.
		if(beta < -srtt_f){
		beta =  srtt_s - srtt_f;
		}

		if ( (beta >= - srtt_f)&&(srtt_f < alpha*rtt_avg ) ){

		iods_cb->switching_margin = 1;
			//Recalculation of beta.
			beta =  beta - srtt_f;
			return NULL;

		} else {
			/* use slower one */
			iods_cb->switching_margin = 0;

		}
	}

	return bestsk;
}

static void iodssched_init(struct sock *sk)
{
	struct iodssched_priv *iods_p = iodssched_get_priv(tcp_sk(sk));
	struct iodssched_cb *iods_cb = iodssched_get_cb(tcp_sk(mptcp_meta_sk(sk)));

	iods_p->last_rbuf_opti = tcp_jiffies32;
	iods_cb->switching_margin = 0;
}

struct mptcp_sched_ops mptcp_sched_iods = {
	.get_subflow = iods_get_available_subflow,
	.next_segment = mptcp_next_segment,
	.init = iodssched_init,
	.name = "iods",
	.owner = THIS_MODULE,
};

static int __init iods_register(void)
{
	BUILD_BUG_ON(sizeof(struct iodssched_priv) > MPTCP_SCHED_SIZE);
	BUILD_BUG_ON(sizeof(struct iodssched_cb) > MPTCP_SCHED_DATA_SIZE);

	if (mptcp_register_scheduler(&mptcp_sched_iods))
		return -1;

	return 0;
}

static void iods_unregister(void)
{
	mptcp_unregister_scheduler(&mptcp_sched_iods);
}

module_init(iods_register);
module_exit(iods_unregister);

MODULE_AUTHOR("...");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("IoDS (In-order Delivery Scheduler) scheduler for MPTCP, based on default minimum RTT scheduler");
MODULE_VERSION("0.96");
