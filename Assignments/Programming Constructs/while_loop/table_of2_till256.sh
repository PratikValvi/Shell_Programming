#!/bin/bash
#Program for "Take a Integer 'n' & print a table of the powers of 2 that are less than or equal to 2^n till 256 is reached"

#Get value of n i.e. index value for 2
read -p "Enter the Index value: " index
number=`echo "2^$index" | bc`
count=0
i=1

#Algorithm to Display Table of 2^n upto 256
while (( $count < $number ))
do
	count=`expr $count + 2`
	echo "2 *" $i "= "$count
	i=`expr $i + 1`
	if (( $count >= 256 ))
	then
		break
	fi
done
