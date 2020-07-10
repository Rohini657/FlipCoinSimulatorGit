###########Flip Coin Simulator########
#!/bin/bash -x
####Use Case1
echo "Display Head Tail Win"
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
	echo "Head Wins"
else
	echo "Tail Wins"
fi

####Use Case2
read -p "Enter No Of Flip : " $n
declare -A dic
dic[HEAD]=0;
dic[TAIL]=0;
for (( i=0;i<=$n++ ))
do
	r=$((RANDOM%2))
	if [ $r -eq 0 ]
	then
		val=${dic[HEAD]}
		dic[HEAD]=$((val+1))
	else
		val=${dic[TAIL]}
		dic[TAIL]=$((val+1))
	fi
done
val=${dic[HEAD]}
echo "Percent Of Head Is:="
echo `Scale=2; $val/$n*100`
val=${dic[TAIL]}
echo "Percent Of Tail Is:="
echo `Scale=2; $val/$n*100`

####Use Case3
#loop For Simulator
hwin=0
twin=0
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 1 ]
	then
		echo "HEAD"
		((hwin++))
	else
		echo "TAILS"
		((twin++))
	fi
done
echo "NO OF TIME HEAD WIN"$hwin
echo "NO OF TIME TAIL WIN"$twin

if [ $hwin -gt $twin ]
then
echo "HEAD WIN BY"$((hwin-twin))
else
echo "TAILS WIN BY"$((hwin-twin))
fi

####Use Case4
##21 Times Won
hwin=0
twin=0
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 1 ]
	then
		echo "HEAD"
		((hwin++))
	else
		echo "TAILS"
		((twin++))
	fi
done
echo "NO OF TIME HEAD WIN"$hwin
echo "NO OF TIME TAIL WIN"$twin

if [ $hwin -gt $twin ]
then
echo "HEAD WIN BY"$((hwin-twin))
else
echo "TAILS WIN BY"$((hwin-twin))
fi
