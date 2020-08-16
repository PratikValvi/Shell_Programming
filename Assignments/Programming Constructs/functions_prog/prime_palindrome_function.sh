#!/bin/bash -x
#Program of "Take a Number from user & check if the number is Prime or not also then show its palindrome is also prime"

__primeNumber__ () {
number=$1
if [ $number == 1 ]
then
	echo $number "is nither Prime nor a Non Prime Number"
else
	for (( i=2; i<number ;i++))
	do
		if (( $number%$i == 0 ))
		then
			flag=0
			break
		fi
	done
fi

#If Condition to check the final outcome of Algorithm
if [ $flag == 0 ] 
then
	echo "$number is not Prime Number"
else
	echo "$number is Prime Number"
fi
}

__palindromeNumber__ () {
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

read -p "Enter Number : " input
#Calling Functions
__primeNumber__ $input
__palindromeNumber__ $input
