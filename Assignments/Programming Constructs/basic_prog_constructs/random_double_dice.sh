#!/bin/bash -x
#Add two Random Dice Number and Print the Result

#Constant acting as Flag for While Loop
flag=1

while [ $flag -eq 1 ]
do
	#Using Random Function to generated random single digit 
	dice_1=$(($RANDOM%7))
	dice_2=$(($RANDOM%7))
	if [ "$dice_1" -gt 0 ] && [ "$dice_2" -gt 0 ] 
	then
		echo "The Face of Dice 1 has Number : " $dice_1
		echo "The Face of Dice 2 has Number : " $dice_2
		echo "The Result of Adding two Dice Number is : " $(($dice_1+$dice_2))
		read -p "Press any Key to Continue or 'q' to Quit: " check_response
		#IF Condition to check response of user 
		if [ "$check_response" == q ]
		then
			break;
		fi
	fi
done
