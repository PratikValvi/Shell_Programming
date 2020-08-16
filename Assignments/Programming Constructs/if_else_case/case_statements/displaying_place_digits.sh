#!/bin/bash 
#Program for "Read Number & display unit ,ten ,hundered and ten thousand place digits using only case_statements"

#Get value from user & store in variable 
read -p "Enter any four digit number: " number

#Algorithm to extract & display place value of user's entered number
if [ $number -lt 10000 ]
then
	thousands_place=`expr $number / 1000`
		
	hundereds_place=`expr $(expr $number % 1000) / 100`
		
	tens_place=`expr $(expr $number % 100) / 10`
		
	unit_place=`expr $number % 10`	
else
	echo "Please Enter a Four digit number"
	echo "**********Thank You**********"
fi

echo "Enter from following options to view place value"
echo ""
echo "1. Unit's place value."
echo "2. Ten's place value."
echo "3. Hundered's place value."
echo "4. Thousand's place value."
echo "		 OR             "
echo "Enter 'A' to see all place values"
read user_response

case $user_response in
	1)
		echo "The Unit's place digit is :" $unit_place
		;;
	
	2)
		echo "The Ten's place digit is :" $tens_place
		;;
		
	3)
		echo "The Hundered's place digit is :" $hundereds_place
		;;
		
	4)
		echo "The Thousand's place digit is :" $thousands_place
		;;
		
	A)
		echo "$thousands_place Thousand's $hundereds_place Hundered's $tens_place Ten's $unit_place Unit's"
		;;
	
	*)
		echo "			      		     Pleae Enter from 1 to 4 or 'A'			        	  "
		echo "*************************************************Thank You************************************************"
esac






