#!/bin/bash

#50MB download
function redundant50(){

redundants50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $redundants50

}

redundant50;
redundants50_1=$redundants50;
echo "redundants50_1 is" $redundants50_1

redundant50;
redundants50_2=$redundants50;
echo "redundants50_2 is" $redundants50_2

redundant50;
redundants50_3=$redundants50;
echo "redundants50_3 is" $redundants50_3

redundant50;
redundants50_4=$redundants50;
echo "redundants50_4 is" $redundants50_4

redundant50;
redundants50_5=$redundants50;
echo "redundants50_5 is" $redundants50_5

redundant50;
redundants50_6=$redundants50;
echo "redundants50_6 is" $redundants50_6

redundant50;
redundants50_7=$redundants50;
echo "redundants50_7 is" $redundants50_7

redundant50;
redundants50_8=$redundants50;
echo "redundants50_8 is" $redundants50_8

redundant50;
redundants50_9=$redundants50;
echo "redundants50_9 is" $redundants50_9

redundant50;
redundants50_10=$redundants50;
echo "redundants50_10 is" $redundants50_10

(
echo  -e "The results for redundants when downloading 50MB test file:\n  1:$redundants50_1\n  2:$redundants50_2\n  3:$redundants50_3\n  4:$redundants50_4
  5:$redundants50_5\n  6:$redundants50_6\n  7:$redundants50_7\n  8:$redundants50_8\n  9:$redundants50_9\n  10:$redundants50_10 \n\n\n"  >  redundants_50.txt
)





#100MB download
function redundant100(){

redundants100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $redundants100

}

redundant100;
redundants100_1=$redundants100;
echo "redundants100_1 is" $redundants100_1

redundant100;
redundants100_2=$redundants100;
echo "redundants100_2 is" $redundants100_2

redundant100;
redundants100_3=$redundants100;
echo "redundants100_3 is" $redundants100_3

redundant100;
redundants100_4=$redundants100;
echo "redundants100_4 is" $redundants100_4

redundant100;
redundants100_5=$redundants100;
echo "redundants100_5 is" $redundants100_5

redundant100;
redundants100_6=$redundants100;
echo "redundants100_6 is" $redundants100_6

redundant100;
redundants100_7=$redundants100;
echo "redundants100_7 is" $redundants100_7

redundant100;
redundants100_8=$redundants100;
echo "redundants100_8 is" $redundants100_8

redundant100;
redundants100_9=$redundants100;
echo "redundants100_9 is" $redundants100_9

redundant100;
redundants100_10=$redundants100;
echo "redundants100_10 is" $redundants100_10

(
echo  -e "The results for redundants when downloading 100MB test file:\n  1:$redundants100_1\n  2:$redundants100_2\n  3:$redundants100_3\n  4:$redundants100_4
  5:$redundants100_5\n  6:$redundants100_6\n  7:$redundants100_7\n  8:$redundants100_8\n  9:$redundants100_9\n  10:$redundants100_10 \n\n\n"  >  redundants_100.txt
)





#200MB download
function redundant200(){

redundants200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $redundants200

}

redundant200;
redundants200_1=$redundants200;
echo "redundants200_1 is" $redundants200_1

redundant200;
redundants200_2=$redundants200;
echo "redundants200_2 is" $redundants200_2

redundant200;
redundants200_3=$redundants200;
echo "redundants200_3 is" $redundants200_3

redundant200;
redundants200_4=$redundants200;
echo "redundants200_4 is" $redundants200_4

redundant200;
redundants200_5=$redundants200;
echo "redundants200_5 is" $redundants200_5

redundant200;
redundants200_6=$redundants200;
echo "redundants200_6 is" $redundants200_6

redundant200;
redundants200_7=$redundants200;
echo "redundants200_7 is" $redundants200_7

redundant200;
redundants200_8=$redundants200;
echo "redundants200_8 is" $redundants200_8

redundant200;
redundants200_9=$redundants200;
echo "redundants200_9 is" $redundants200_9

redundant200;
redundants200_10=$redundants200;
echo "redundants200_10 is" $redundants200_10

(
echo  -e "The results for redundants when downloading 200MB test file:\n  1:$redundants200_1\n  2:$redundants200_2\n  3:$redundants200_3\n  4:$redundants200_4
  5:$redundants200_5\n  6:$redundants200_6\n  7:$redundants200_7\n  8:$redundants200_8\n  9:$redundants200_9\n  10:$redundants200_10 \n\n\n"  >  redundants_200.txt
)

