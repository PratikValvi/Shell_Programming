#!/bin/bash -x
#Program of "Use Random Function to get single digit"

#Constant acting as Flag for While Loop
flag=1
while [ $flag -eq 1 ]
do
	#Using Random Function to generated random single digit 
	random_no=$((RANDOM%10))
	echo "The Random Number generated is: " $random_no
	read -p "Press any Key to Continue or 'q' to Quit: " check_response
	#IF Condition to check response from user 
	if [ "$check_response" == q ]
	then
		break;
	fi
done

