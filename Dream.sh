#!/bin/bash/
echo '1 card 2 train 3 fuqi 4 duofu'
read selectNum

case $selectNum in
	1) echo 'card num'
	read cardnum
	while(($cardnum>=0))
	do
		adb shell input tap 500 1350
		sleep 0.5
		adb shell input tap 500 1350
		sleep 0.5
		adb shell input tap 500 1350
		sleep 0.5
		let "cardnum--"
	done
	;;
	2) echo 'train'
	trainnum=(650 1800 \
	800 1750\
	950 1650)
	buildnum=(300 1450 300 1150 300 900 \
	500 700 500 950 500 1200 \
	850 1000 850 750 850 500)
	while ((1>0))
	do
		for((i=0;i<6;i+=2))
		do
			for((j=0;j<18;j+=2))
			do
				adb shell input swipe ${trainnum[i]} ${trainnum[i+1]} ${buildnum[j]} ${buildnum[j+1]}
			done
		done
	done
	;;
	3) echo 'fuqi tap num'
	read fuqinum
	while(($fuqinum>=0))
	do
		adb shell input tap 250 650
		sleep 0.5
		let "fuqinum--"
	done
	;;
	4) echo 'duofu tap num'
	read fuqinum
	while(($fuqinum>=0))
	do
		adb shell input tap 500 650
		sleep 0.5
		let "fuqinum--"
	done
	;;
	*) echo 'wrong num'
	;;
esac
