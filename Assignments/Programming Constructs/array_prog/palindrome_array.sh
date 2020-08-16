#!/bin/bash -x
#Program for "Take a range of 0-100 find the digits that are repeated twice like 33,77 etc & store them in an array"

declare -a palindrome_numbers

#Constants
start_of_range=10
end_of_range=100

#Variables
index=0

for ((i=$start_of_range; i<=$end_of_range; i++))
do
	number=$i
	original_number=$i
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
	    palindrome_numbers[$index]=$original_number
	    index=`expr $index + 1`
	else
	    echo "Number is not palindrome"
	fi
done

#Displaying Array in which numbers like 11,22,33 & etc are stored
echo ${palindrome_numbers[*]}

