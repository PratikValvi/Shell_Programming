#!/bin/bash -x
#Program for "Get Single from user & display spelling of that number using case only"

#variable
read -p "Enter any Single Digit Number: " check_number

#Checking every possible case of variable using Case Statements
case $check_number in
	0)
		echo "You entered Zero."
		;;
	1)
		echo "You entered One."
		;;
	2)
		echo "You entered Two."
		;;
	3)
		echo "You entered Three."
		;;
	4)
		echo "You entered Four."
		;;
	5)
		echo "You entered Five."
		;;
	6)
		echo "You entered Six."
		;;
	7)
		echo "You entered Seven."
		;;
	8)
		echo "You entered Eight."
		;;
	9)
		echo "You entered Nine."
		;;
	*)
		echo "Please enter single digit from 0 to 9."
		echo "**********Thank You**********"
		;;
esac

