#!/bin/bash -x
#Program for "Get number from user & display the week day"

#Get number from user and store in variable
read -p "Enter any number from 1 to 7 to see day of week: " check_number

#Algorithm to display week day according to number using if_elif_else 
if [ $check_number == 1 ]
then
	echo "You entered "$check_number 
	echo "1st Day of Week SUNDAY"

elif [ $check_number == 2 ]
then
	echo "You entered "$check_number 
	echo "2nd Day of Week MONDAY"

elif [ $check_number == 3 ]
then
	echo "You entered "$check_number 
	echo "3rd Day of Week TUESDAY"

elif [ $check_number == 4 ]
then
	echo "You entered "$check_number 
	echo "4th Day of Week WEDNESDAY"

elif [ $check_number == 5 ]
then
	echo "You entered "$check_number 
	echo "5th Day of Week THURSDAY"

elif [ $check_number == 6 ]
then
	echo "You entered "$check_number 
	echo "6th Day of Week FRIDAY"

elif [ $check_number == 7 ]
then
	echo "You entered "$check_number 
	echo "7th Day of Week SATURDAY"

else
	echo "Please enter from 1 to 7"
	echo "**********Thank You*******"
fi
