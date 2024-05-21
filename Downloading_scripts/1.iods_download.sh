#!/bin/bash

#50MB download
function iod50(){

iods50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $iods50

}

iod50;
iods50_1=$iods50;
echo "iods50_1 is" $iods50_1

iod50;
iods50_2=$iods50;
echo "iods50_2 is" $iods50_2

iod50;
iods50_3=$iods50;
echo "iods50_3 is" $iods50_3

iod50;
iods50_4=$iods50;
echo "iods50_4 is" $iods50_4

iod50;
iods50_5=$iods50;
echo "iods50_5 is" $iods50_5

iod50;
iods50_6=$iods50;
echo "iods50_6 is" $iods50_6

iod50;
iods50_7=$iods50;
echo "iods50_7 is" $iods50_7

iod50;
iods50_8=$iods50;
echo "iods50_8 is" $iods50_8

iod50;
iods50_9=$iods50;
echo "iods50_9 is" $iods50_9

iod50;
iods50_10=$iods50;
echo "iods50_10 is" $iods50_10

(
echo  -e "The results for iods when downloading 50MB test file:\n  1:$iods50_1\n  2:$iods50_2\n  3:$iods50_3\n  4:$iods50_4
  5:$iods50_5\n  6:$iods50_6\n  7:$iods50_7\n  8:$iods50_8\n  9:$iods50_9\n  10:$iods50_10 \n\n\n"  >  iods_50.txt
)





#100MB download
function iod100(){

iods100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $iods100

}

iod100;
iods100_1=$iods100;
echo "iods100_1 is" $iods100_1

iod100;
iods100_2=$iods100;
echo "iods100_2 is" $iods100_2

iod100;
iods100_3=$iods100;
echo "iods100_3 is" $iods100_3

iod100;
iods100_4=$iods100;
echo "iods100_4 is" $iods100_4

iod100;
iods100_5=$iods100;
echo "iods100_5 is" $iods100_5

iod100;
iods100_6=$iods100;
echo "iods100_6 is" $iods100_6

iod100;
iods100_7=$iods100;
echo "iods100_7 is" $iods100_7

iod100;
iods100_8=$iods100;
echo "iods100_8 is" $iods100_8

iod100;
iods100_9=$iods100;
echo "iods100_9 is" $iods100_9

iod100;
iods100_10=$iods100;
echo "iods100_10 is" $iods100_10

(
echo  -e "The results for iods when downloading 100MB test file:\n  1:$iods100_1\n  2:$iods100_2\n  3:$iods100_3\n  4:$iods100_4
  5:$iods100_5\n  6:$iods100_6\n  7:$iods100_7\n  8:$iods100_8\n  9:$iods100_9\n  10:$iods100_10 \n\n\n"  >  iods_100.txt
)





#200MB download
function iod200(){

iods200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $iods200

}

iod200;
iods200_1=$iods200;
echo "iods200_1 is" $iods200_1

iod200;
iods200_2=$iods200;
echo "iods200_2 is" $iods200_2

iod200;
iods200_3=$iods200;
echo "iods200_3 is" $iods200_3

iod200;
iods200_4=$iods200;
echo "iods200_4 is" $iods200_4

iod200;
iods200_5=$iods200;
echo "iods200_5 is" $iods200_5

iod200;
iods200_6=$iods200;
echo "iods200_6 is" $iods200_6

iod200;
iods200_7=$iods200;
echo "iods200_7 is" $iods200_7

iod200;
iods200_8=$iods200;
echo "iods200_8 is" $iods200_8

iod200;
iods200_9=$iods200;
echo "iods200_9 is" $iods200_9

iod200;
iods200_10=$iods200;
echo "iods200_10 is" $iods200_10

(
echo  -e "The results for iods when downloading 200MB test file:\n  1:$iods200_1\n  2:$iods200_2\n  3:$iods200_3\n  4:$iods200_4
  5:$iods200_5\n  6:$iods200_6\n  7:$iods200_7\n  8:$iods200_8\n  9:$iods200_9\n  10:$iods200_10 \n\n\n"  >  iods_200.txt
)

