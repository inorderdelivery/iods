#!/bin/bash

#50MB download
function default50(){

def50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $def50

}

default50;
def50_1=$def50;
echo "def50_1 is" $def50_1

default50;
def50_2=$def50;
echo "def50_2 is" $def50_2

default50;
def50_3=$def50;
echo "def50_3 is" $def50_3

default50;
def50_4=$def50;
echo "def50_4 is" $def50_4

default50;
def50_5=$def50;
echo "def50_5 is" $def50_5

default50;
def50_6=$def50;
echo "def50_6 is" $def50_6

default50;
def50_7=$def50;
echo "def50_7 is" $def50_7

default50;
def50_8=$def50;
echo "def50_8 is" $def50_8

default50;
def50_9=$def50;
echo "def50_9 is" $def50_9

default50;
def50_10=$def50;
echo "def50_10 is" $def50_10

(
echo  -e "The results for default when downloading 50MB test file:\n  1:$def50_1\n  2:$def50_2\n  3:$def50_3\n  4:$def50_4
  5:$def50_5\n  6:$def50_6\n  7:$def50_7\n  8:$def50_8\n  9:$def50_9\n  10:$def50_10 \n\n\n"  >  default_50.txt
)





#100MB download
function default100(){

def100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $def100

}

default100;
def100_1=$def100;
echo "def100_1 is" $def100_1

default100;
def100_2=$def100;
echo "def100_2 is" $def100_2

default100;
def100_3=$def100;
echo "def100_3 is" $def100_3

default100;
def100_4=$def100;
echo "def100_4 is" $def100_4

default100;
def100_5=$def100;
echo "def100_5 is" $def100_5

default100;
def100_6=$def100;
echo "def100_6 is" $def100_6

default100;
def100_7=$def100;
echo "def100_7 is" $def100_7

default100;
def100_8=$def100;
echo "def100_8 is" $def100_8

default100;
def100_9=$def100;
echo "def100_9 is" $def100_9

default100;
def100_10=$def100;
echo "def100_10 is" $def100_10

(
echo  -e "The results for default when downloading 100MB test file:\n  1:$def100_1\n  2:$def100_2\n  3:$def100_3\n  4:$def100_4
  5:$def100_5\n  6:$def100_6\n  7:$def100_7\n  8:$def100_8\n  9:$def100_9\n  10:$def100_10 \n\n\n"  >  default_100.txt
)





#200MB download
function default200(){

def200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $def200

}

default200;
def200_1=$def200;
echo "def200_1 is" $def200_1

default200;
def200_2=$def200;
echo "def200_2 is" $def200_2

default200;
def200_3=$def200;
echo "def200_3 is" $def200_3

default200;
def200_4=$def200;
echo "def200_4 is" $def200_4

default200;
def200_5=$def200;
echo "def200_5 is" $def200_5

default200;
def200_6=$def200;
echo "def200_6 is" $def200_6

default200;
def200_7=$def200;
echo "def200_7 is" $def200_7

default200;
def200_8=$def200;
echo "def200_8 is" $def200_8

default200;
def200_9=$def200;
echo "def200_9 is" $def200_9

default200;
def200_10=$def200;
echo "def200_10 is" $def200_10

(
echo  -e "The results for default when downloading 200MB test file:\n  1:$def200_1\n  2:$def200_2\n  3:$def200_3\n  4:$def200_4
  5:$def200_5\n  6:$def200_6\n  7:$def200_7\n  8:$def200_8\n  9:$def200_9\n  10:$def200_10 \n\n\n"  >  default_200.txt
)

