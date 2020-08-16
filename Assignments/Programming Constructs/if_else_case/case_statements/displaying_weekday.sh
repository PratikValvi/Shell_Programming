#!/bin/bash -x
#Program for "Get Single Digit Number from User & Display Weekday using Case Statements only"

#Variable
read -p "Enter any Single Digit Number from 1 to 7: " check_number

#Algorithm to Display Weekday using Case Statements
case $check_number in
	1)
		echo "You entered "$check_number
		echo "The 1st Day of week is SUNDAY."
		;;
	2)
		echo "You entered "$check_number
		echo "The 2nd Day of week is MONDAY."
		;;
	3)
		echo "You entered "$check_number
		echo "The 3rd Day of week is TUESDAY."
		;;
	4)
		echo "You entered "$check_number
		echo "The 4th Day of week is WEDNESDAY."
		;;
	5)
		echo "You entered "$check_number
		echo "The 5th Day of week is THURSDAY."
		;;
	6)
		echo "You entered "$check_number
		echo "The 6th Day of week is FRIDAY."
		;;
	7)
		echo "You entered "$check_number
		echo "The 7th Day of week is SATURDAY."
		;;
	*)
		echo "Please enter single digit number from 1 to 7"
		echo "**********Thank You**********"
		;;
esac
