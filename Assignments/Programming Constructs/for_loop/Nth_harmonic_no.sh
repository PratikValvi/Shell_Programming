#!/bin/bash -x
#Program for "Get the number 'N' from user & print the 'Nth' Harmonic Number"

#Get number from user to find its harmonic number
read -p "Enter the Number: " number

harmonic_no=1

#For Loop to repeat the action until desired the harmonic number is available 
for (( i=2; i<=number; i++ ))
do
	harmonic_no=`echo "$harmonic_no+(1/$i)" | bc -l`
	harmonic_no=`printf %.2f $harmonic_no`
done

echo "Harmonic Number of "$number "is "$harmonic_no
