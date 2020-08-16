#!/bin/bash -x
#Program for "Write a Function to check if the two numbers are Palindromes"

#Decleration & Definition of palindrome Function
_palindrome_ () {
	number=$1
	original_number=$1
	reverse_number=0
	while [ $number -gt 0 ]
	do
		first_var=`expr $number % 10`
		number=`expr $number / 10`
		reverse_number=`expr $reverse_number \* 10 + $first_var`
	done
	echo $reverse_number
	if [ $original_number -eq $reverse_number ]
	then
	    echo "Number is palindrome"
	else
	    echo "Number is not palindrome"
	fi
}

#Calling Function _palindrome_ & passing parameter to function
_palindrome_ 1331
_palindrome_ 1122



