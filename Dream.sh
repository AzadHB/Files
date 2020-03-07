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
    buildnum_x=(350 500 800)
	buildnum_y=(1450 1150 900 \
	700 950 1200 \
	1000 750 500)
	while ((1>0))
	do
		for((i=0;i<3;i++))
		do
			for((j=0;j<9;j++))
			do
				adb shell input swipe ${trainnum[i*2]} ${trainnum[i*2+1]} ${buildnum_x[j/3]} ${buildnum_y[j]}
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
