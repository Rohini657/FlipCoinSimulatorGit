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
