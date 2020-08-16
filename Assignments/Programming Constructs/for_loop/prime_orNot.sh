#!/bin/bash -x
#Program for "Get Number from user & Display weather it is Prime NUmber or Not"

#Get the User Input
read -p "Enter the Number: " number

#Algorithm for checking a Non Prime Number
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
