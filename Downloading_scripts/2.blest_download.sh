#!/bin/bash

#50MB download
function blest50(){

blests50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $blests50

}

blest50;
blests50_1=$blests50;
echo "blests50_1 is" $blests50_1

blest50;
blests50_2=$blests50;
echo "blests50_2 is" $blests50_2

blest50;
blests50_3=$blests50;
echo "blests50_3 is" $blests50_3

blest50;
blests50_4=$blests50;
echo "blests50_4 is" $blests50_4

blest50;
blests50_5=$blests50;
echo "blests50_5 is" $blests50_5

blest50;
blests50_6=$blests50;
echo "blests50_6 is" $blests50_6

blest50;
blests50_7=$blests50;
echo "blests50_7 is" $blests50_7

blest50;
blests50_8=$blests50;
echo "blests50_8 is" $blests50_8

blest50;
blests50_9=$blests50;
echo "blests50_9 is" $blests50_9

blest50;
blests50_10=$blests50;
echo "blests50_10 is" $blests50_10

(
echo  -e "The results for blests when downloading 50MB test file:\n  1:$blests50_1\n  2:$blests50_2\n  3:$blests50_3\n  4:$blests50_4
  5:$blests50_5\n  6:$blests50_6\n  7:$blests50_7\n  8:$blests50_8\n  9:$blests50_9\n  10:$blests50_10 \n\n\n"  >  blests_50.txt
)





#100MB download
function blest100(){

blests100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $blests100

}

blest100;
blests100_1=$blests100;
echo "blests100_1 is" $blests100_1

blest100;
blests100_2=$blests100;
echo "blests100_2 is" $blests100_2

blest100;
blests100_3=$blests100;
echo "blests100_3 is" $blests100_3

blest100;
blests100_4=$blests100;
echo "blests100_4 is" $blests100_4

blest100;
blests100_5=$blests100;
echo "blests100_5 is" $blests100_5

blest100;
blests100_6=$blests100;
echo "blests100_6 is" $blests100_6

blest100;
blests100_7=$blests100;
echo "blests100_7 is" $blests100_7

blest100;
blests100_8=$blests100;
echo "blests100_8 is" $blests100_8

blest100;
blests100_9=$blests100;
echo "blests100_9 is" $blests100_9

blest100;
blests100_10=$blests100;
echo "blests100_10 is" $blests100_10

(
echo  -e "The results for blests when downloading 100MB test file:\n  1:$blests100_1\n  2:$blests100_2\n  3:$blests100_3\n  4:$blests100_4
  5:$blests100_5\n  6:$blests100_6\n  7:$blests100_7\n  8:$blests100_8\n  9:$blests100_9\n  10:$blests100_10 \n\n\n"  >  blests_100.txt
)





#200MB download
function blest200(){

blests200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $blests200

}

blest200;
blests200_1=$blests200;
echo "blests200_1 is" $blests200_1

blest200;
blests200_2=$blests200;
echo "blests200_2 is" $blests200_2

blest200;
blests200_3=$blests200;
echo "blests200_3 is" $blests200_3

blest200;
blests200_4=$blests200;
echo "blests200_4 is" $blests200_4

blest200;
blests200_5=$blests200;
echo "blests200_5 is" $blests200_5

blest200;
blests200_6=$blests200;
echo "blests200_6 is" $blests200_6

blest200;
blests200_7=$blests200;
echo "blests200_7 is" $blests200_7

blest200;
blests200_8=$blests200;
echo "blests200_8 is" $blests200_8

blest200;
blests200_9=$blests200;
echo "blests200_9 is" $blests200_9

blest200;
blests200_10=$blests200;
echo "blests200_10 is" $blests200_10

(
echo  -e "The results for blests when downloading 200MB test file:\n  1:$blests200_1\n  2:$blests200_2\n  3:$blests200_3\n  4:$blests200_4
  5:$blests200_5\n  6:$blests200_6\n  7:$blests200_7\n  8:$blests200_8\n  9:$blests200_9\n  10:$blests200_10 \n\n\n"  >  blests_200.txt
)

