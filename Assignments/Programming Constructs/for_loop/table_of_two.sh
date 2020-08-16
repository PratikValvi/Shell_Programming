#!/bin/bash
#Program of "Print table of 2 until value of 2 to the power of 'n' ie 2^n"

#Read index n value from user for expression 2^n
read -p "Enter the Index value in Integer: " index
#Calculate the value of 2^n
number=`echo "2^$index" | bc `
echo $number

#Dummy varaible to store the count  
count=0

#For Loop to execute till the count reaches upto 2^n
for (( i=1; count<number; i++ ))
do
	count=`expr $count + 2`
	echo "2 *" $i "= "$count
done

#Displaying the Index value Entered by User & value of 2^n 
#Where 'n' is Index value Entered by User
echo "You Entered Index" $index "So 2^"$index "is "$number

