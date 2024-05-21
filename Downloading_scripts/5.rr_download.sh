#!/bin/bash

#50MB download
function round50(){

rounds50=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/50MB.zip --output 50MB.test) 2>&1 | grep real`
echo $rounds50

}

round50;
rounds50_1=$rounds50;
echo "rounds50_1 is" $rounds50_1

round50;
rounds50_2=$rounds50;
echo "rounds50_2 is" $rounds50_2

round50;
rounds50_3=$rounds50;
echo "rounds50_3 is" $rounds50_3

round50;
rounds50_4=$rounds50;
echo "rounds50_4 is" $rounds50_4

round50;
rounds50_5=$rounds50;
echo "rounds50_5 is" $rounds50_5

round50;
rounds50_6=$rounds50;
echo "rounds50_6 is" $rounds50_6

round50;
rounds50_7=$rounds50;
echo "rounds50_7 is" $rounds50_7

round50;
rounds50_8=$rounds50;
echo "rounds50_8 is" $rounds50_8

round50;
rounds50_9=$rounds50;
echo "rounds50_9 is" $rounds50_9

round50;
rounds50_10=$rounds50;
echo "rounds50_10 is" $rounds50_10

(
echo  -e "The results for rounds when downloading 50MB test file:\n  1:$rounds50_1\n  2:$rounds50_2\n  3:$rounds50_3\n  4:$rounds50_4
  5:$rounds50_5\n  6:$rounds50_6\n  7:$rounds50_7\n  8:$rounds50_8\n  9:$rounds50_9\n  10:$rounds50_10 \n\n\n"  >  rounds_50.txt
)





#100MB download
function round100(){

rounds100=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/100MB.zip --output 100MB.test) 2>&1 | grep real`
echo $rounds100

}

round100;
rounds100_1=$rounds100;
echo "rounds100_1 is" $rounds100_1

round100;
rounds100_2=$rounds100;
echo "rounds100_2 is" $rounds100_2

round100;
rounds100_3=$rounds100;
echo "rounds100_3 is" $rounds100_3

round100;
rounds100_4=$rounds100;
echo "rounds100_4 is" $rounds100_4

round100;
rounds100_5=$rounds100;
echo "rounds100_5 is" $rounds100_5

round100;
rounds100_6=$rounds100;
echo "rounds100_6 is" $rounds100_6

round100;
rounds100_7=$rounds100;
echo "rounds100_7 is" $rounds100_7

round100;
rounds100_8=$rounds100;
echo "rounds100_8 is" $rounds100_8

round100;
rounds100_9=$rounds100;
echo "rounds100_9 is" $rounds100_9

round100;
rounds100_10=$rounds100;
echo "rounds100_10 is" $rounds100_10


(
echo  -e "The results for rounds when downloading 100MB test file:\n  1:$rounds100_1\n  2:$rounds100_2\n  3:$rounds100_3\n  4:$rounds100_4
  5:$rounds100_5\n  6:$rounds100_6\n  7:$rounds100_7\n  8:$rounds100_8\n  9:$rounds100_9\n  10:$rounds100_10 \n\n\n"  >  rounds_100.txt
)





#200MB download
function round200(){

rounds200=`(time curl --socks5 "193.196.37.2:1080" 212.183.159.230/200MB.zip --output 200MB.test) 2>&1 | grep real`
echo $rounds200

}

round200;
rounds200_1=$rounds200;
echo "rounds200_1 is" $rounds200_1

round200;
rounds200_2=$rounds200;
echo "rounds200_2 is" $rounds200_2

round200;
rounds200_3=$rounds200;
echo "rounds200_3 is" $rounds200_3

round200;
rounds200_4=$rounds200;
echo "rounds200_4 is" $rounds200_4

round200;
rounds200_5=$rounds200;
echo "rounds200_5 is" $rounds200_5

round200;
rounds200_6=$rounds200;
echo "rounds200_6 is" $rounds200_6

round200;
rounds200_7=$rounds200;
echo "rounds200_7 is" $rounds200_7

round200;
rounds200_8=$rounds200;
echo "rounds200_8 is" $rounds200_8

round200;
rounds200_9=$rounds200;
echo "rounds200_9 is" $rounds200_9

round200;
rounds200_10=$rounds200;
echo "rounds200_10 is" $rounds200_10

(
echo  -e "The results for rounds when downloading 200MB test file:\n  1:$rounds200_1\n  2:$rounds200_2\n  3:$rounds200_3\n  4:$rounds200_4
  5:$rounds200_5\n  6:$rounds200_6\n  7:$rounds200_7\n  8:$rounds200_8\n  9:$rounds200_9\n  10:$rounds200_10 \n\n\n"  >  rounds_200.txt
)

