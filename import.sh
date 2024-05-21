#!/bin/bash
make

sudo sysctl net.mptcp.mptcp_scheduler=default
sudo rmmod -f mptcp_iods.ko
sudo insmod  mptcp_iods.ko
sudo sysctl net.mptcp.mptcp_scheduler=iods


#end
