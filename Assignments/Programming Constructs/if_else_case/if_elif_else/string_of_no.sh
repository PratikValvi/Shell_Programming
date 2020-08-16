#!/bin/bash -x
#Program for "Read Single digit from user & write the number in words"

#Read number & store in Variable
read -p "Enter any Single digit Number 0 to 9 : " check_number

#Algorithm for displaying entered number from 0 to 9 in String
if [ $check_number == 0 ]
then
	echo "Your entered Zero."

elif [ $check_number == 1 ]
then
	echo "Your entered One."

elif [ $check_number == 2 ]
then
	echo "Your entered Two."

elif [ $check_number == 3 ]
then
	echo "Your entered Three."

elif [ $check_number == 4 ]
then
	echo "Your entered Four."
	
elif [ $check_number == 5 ]
then
	echo "Your entered Five."

elif [ $check_number == 6 ]
then
	echo "Your entered Six."
	
elif [ $check_number == 7 ]
then
	echo "Your entered Seven."
	
elif [ $check_number == 8 ]
then
	echo "Your entered Eight."

elif [ $check_number == 9 ]
then
	echo "Your entered Nine."

else
	echo "Please Enter from 0 to 9"
	echo "Thank You!!!"
fi
