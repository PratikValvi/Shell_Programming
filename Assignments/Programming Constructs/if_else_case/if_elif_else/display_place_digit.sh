#!/bin/bash -x
#Program for "Read Number & display unit ,ten ,hundered and ten thousand place digits using only if_elif_else"

#Get value from user & store in variable 
read -p "Enter any four digit number: " number

#Algorithm to extract & display place value of user's entered number
if [ $number -lt 10000 ]
then
	thousands_place=`expr $number / 1000`
	echo "The Thousand's place digit is :" $thousands_place
	
	hundereds_place=`expr $(expr $number % 1000) / 100`
	echo "The Hundered's place digit is :" $hundereds_place
	
	tens_place=`expr $(expr $number % 100) / 10`
	echo "The Ten's place digit is :" $tens_place
	
	unit_place=`expr $number % 10`
	echo "The Unit's place digit is :" $unit_place
else
	echo "Please Enter a Four digit number"
	echo "**********Thank You**********"
fi


