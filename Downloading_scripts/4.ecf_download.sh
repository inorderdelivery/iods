#!/bin/bash

#50MB download
function ecf50(){

ecfs50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $ecfs50

}

ecf50;
ecfs50_1=$ecfs50;
echo "ecfs50_1 is" $ecfs50_1

ecf50;
ecfs50_2=$ecfs50;
echo "ecfs50_2 is" $ecfs50_2

ecf50;
ecfs50_3=$ecfs50;
echo "ecfs50_3 is" $ecfs50_3

ecf50;
ecfs50_4=$ecfs50;
echo "ecfs50_4 is" $ecfs50_4

ecf50;
ecfs50_5=$ecfs50;
echo "ecfs50_5 is" $ecfs50_5

ecf50;
ecfs50_6=$ecfs50;
echo "ecfs50_6 is" $ecfs50_6

ecf50;
ecfs50_7=$ecfs50;
echo "ecfs50_7 is" $ecfs50_7

ecf50;
ecfs50_8=$ecfs50;
echo "ecfs50_8 is" $ecfs50_8

ecf50;
ecfs50_9=$ecfs50;
echo "ecfs50_9 is" $ecfs50_9

ecf50;
ecfs50_10=$ecfs50;
echo "ecfs50_10 is" $ecfs50_10

(
echo  -e "The results for ecfs when downloading 50MB test file:\n  1:$ecfs50_1\n  2:$ecfs50_2\n  3:$ecfs50_3\n  4:$ecfs50_4
  5:$ecfs50_5\n  6:$ecfs50_6\n  7:$ecfs50_7\n  8:$ecfs50_8\n  9:$ecfs50_9\n  10:$ecfs50_10 \n\n\n"  >  ecfs_50.txt
)





#100MB download
function ecf100(){

ecfs100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $ecfs100

}

ecf100;
ecfs100_1=$ecfs100;
echo "ecfs100_1 is" $ecfs100_1

ecf100;
ecfs100_2=$ecfs100;
echo "ecfs100_2 is" $ecfs100_2

ecf100;
ecfs100_3=$ecfs100;
echo "ecfs100_3 is" $ecfs100_3

ecf100;
ecfs100_4=$ecfs100;
echo "ecfs100_4 is" $ecfs100_4

ecf100;
ecfs100_5=$ecfs100;
echo "ecfs100_5 is" $ecfs100_5

ecf100;
ecfs100_6=$ecfs100;
echo "ecfs100_6 is" $ecfs100_6

ecf100;
ecfs100_7=$ecfs100;
echo "ecfs100_7 is" $ecfs100_7

ecf100;
ecfs100_8=$ecfs100;
echo "ecfs100_8 is" $ecfs100_8

ecf100;
ecfs100_9=$ecfs100;
echo "ecfs100_9 is" $ecfs100_9

ecf100;
ecfs100_10=$ecfs100;
echo "ecfs100_10 is" $ecfs100_10

(
echo  -e "The results for ecfs when downloading 100MB test file:\n  1:$ecfs100_1\n  2:$ecfs100_2\n  3:$ecfs100_3\n  4:$ecfs100_4
  5:$ecfs100_5\n  6:$ecfs100_6\n  7:$ecfs100_7\n  8:$ecfs100_8\n  9:$ecfs100_9\n  10:$ecfs100_10 \n\n\n"  >  ecfs_100.txt
)





#200MB download
function ecf200(){

ecfs200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $ecfs200

}

ecf200;
ecfs200_1=$ecfs200;
echo "ecfs200_1 is" $ecfs200_1

ecf200;
ecfs200_2=$ecfs200;
echo "ecfs200_2 is" $ecfs200_2

ecf200;
ecfs200_3=$ecfs200;
echo "ecfs200_3 is" $ecfs200_3

ecf200;
ecfs200_4=$ecfs200;
echo "ecfs200_4 is" $ecfs200_4

ecf200;
ecfs200_5=$ecfs200;
echo "ecfs200_5 is" $ecfs200_5

ecf200;
ecfs200_6=$ecfs200;
echo "ecfs200_6 is" $ecfs200_6

ecf200;
ecfs200_7=$ecfs200;
echo "ecfs200_7 is" $ecfs200_7

ecf200;
ecfs200_8=$ecfs200;
echo "ecfs200_8 is" $ecfs200_8

ecf200;
ecfs200_9=$ecfs200;
echo "ecfs200_9 is" $ecfs200_9

ecf200;
ecfs200_10=$ecfs200;
echo "ecfs200_10 is" $ecfs200_10

(
echo  -e "The results for ecfs when downloading 200MB test file:\n  1:$ecfs200_1\n  2:$ecfs200_2\n  3:$ecfs200_3\n  4:$ecfs200_4
  5:$ecfs200_5\n  6:$ecfs200_6\n  7:$ecfs200_7\n  8:$ecfs200_8\n  9:$ecfs200_9\n  10:$ecfs200_10 \n\n\n"  >  ecfs_200.txt
)

