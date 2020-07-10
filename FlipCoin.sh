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


