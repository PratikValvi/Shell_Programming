#!/bin/bash -x
#Program of "Use Random Function to get Dice Number between 1 to 6"

#Constant acting as Flag for While Loop
flag=1

while [ $flag -eq 1 ]
do
	#Using Random Function to generated random single digit 
	random_no=$(($RANDOM%7))
	if [ "$random_no" -gt 0 ]
	then
		echo "The Face of Dice has Number : " $random_no
		read -p "Press any Key to Continue or 'q' to Quit: " check_response
		#IF Condition to check response of user 
		if [ "$check_response" == q ]
		then
			break;
		fi
	fi
done
