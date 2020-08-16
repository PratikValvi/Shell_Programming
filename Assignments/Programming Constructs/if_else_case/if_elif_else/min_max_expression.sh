#!/bin/bash -x
#Program for "Solve the given expression using random numbers & find minimum & maximum result"
#Expressions
#1) a+b*c
#2) a%b+c
#3) c+a/b
#4) a*b+c

#Variables
read -p "Enter First Number: " first_no
read -p "Enter Second Number: " second_no
read -p "Enter Third Number: " third_no

#Calculating value of every Expression
expr_1=`echo "$first_no+($second_no*$third_no)" | bc `
echo $expr_1

expr_2=`echo "($first_no%$second_no)+$third_no" | bc `
echo $expr_2

expr_3=`echo "$third_no+($first_no/$second_no)" | bc `
echo $expr_3

expr_4=`echo "($first_no*$second_no)+$third_no" | bc `
echo $expr_4

#Algorithm to find expression having Maximum value
if [ $expr_1 -gt $expr_2 ]
then
	if [ $expr_1 -gt $expr_3 ]
	then
		if [ $expr_1 -gt $expr_4 ]
		then
			echo "The Maximum_value is: " $expr_1
		else
			echo "The Maximum_value is: " $expr_4
		fi
	else
		if [ $expr_3 -gt $expr_4 ]
		then
			echo "The Maximum_value is: " $expr_3
		else
			echo "The Maximum_value is: " $expr_4
		fi
	fi
elif [ $expr_2 -gt $expr_3 ]
then
	if [ $expr_2 -gt $expr_4 ]
	then
		echo "The Maximum_value is: " $expr_2
	else
		echo "The Maximum_value is: " $expr_4
	fi
elif [ $expr_3 -gt $expr_4 ]
then
	echo "The Maximum_value is: " $expr_3
else
	echo "The Maximum_value is: " $expr_4
fi

#Algorithm to find expression having Minimum value
if [ $expr_1 -lt $expr_2 ]
then
	if [ $expr_1 -lt $expr_3 ]
	then
		if [ $expr_1 -lt $expr_4 ]
		then
			echo "The Minimum_value is: " $expr_1
		else
			echo "The Minimum_value is: " $expr_4
		fi
	else
		if [ $expr_3 -lt $expr_4 ]
		then
			echo "The Minimum_value is: " $expr_3
		else
			echo "The Minimum_value is: " $expr_4
		fi
	fi
elif [ $expr_2 -lt $expr_3 ]
then
	if [ $expr_2 -lt $expr_4 ]
	then
		echo "The Minimum_value is: " $expr_2
	else
		echo "The Minimum_value is: " $expr_4
	fi
elif [ $expr_3 -lt $expr_4 ]
then
	echo "The Minimum_value is: " $expr_3
else
	echo "The Minimum_value is: " $expr_4
fi	 
