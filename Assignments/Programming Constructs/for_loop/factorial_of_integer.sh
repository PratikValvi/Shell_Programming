#!/bin/bash -x
#Program for "Get Integer Input from User & find Factorial"

factorial_of_n=1
#Get Integer value from user
read -p "Enter any Integer: " integer_no

#Algorithm for Computing Factorial
for (( i=1; i<=integer_no; i++ ))
do
	factorial_of_n=`echo "$factorial_of_n*$i" | bc`
done

echo "Factorial of "$integer_no "is "$factorial_of_n
