#!/bin/bash -x
#Program for "Read 5 Random 3 Digit values and then output the minimum and maximum value"

#Get Five Numbers using RANDOM Function  
first_no=$((RANDOM%1000))
second_no=$((RANDOM%1000))
third_no=$((RANDOM%1000))
fourth_no=$((RANDOM%1000))
fifth_no=$((RANDOM%1000))

#Display All Five Numbers 
echo "Random Numbers are: "$first_no $second_no $third_no $fourth_no $fifth_no

#Dummy Varaiables to chang their values according to Algorithm
maximum_no=$first_no
minimum_no=$first_no

#Algorithm for finding Maximum Number using only If_Else
if [ $second_no -gt $maximum_no ]
then
	maximum_no=$second_no
else
	maximum_no=$maximum_no
fi
	
if [ $third_no -gt $maximum_no ]
then
	maximum_no=$third_no
else
	maximum_no=$maximum_no
fi

if [ $fourth_no -gt $maximum_no ]
then
	maximum_no=$fourth_no
else
	maximum_no=$maximum_no
fi

if [ $fifth_no -gt $maximum_no ]
then
	maximum_no=$fifth_no			
else
	maximum_no=$maximum_no
fi
echo "Maximum Number is: " $maximum_no

#Algorithm for finding Minimum Number using only If_Else
if [ $second_no -lt $minimum_no ]
then
	minimum_no=$second_no
else
	minimum_no=$minimum_no
fi

if [ $third_no -lt $minimum_no ]
then
	minimum_no=$third_no
else
	minimum_no=$minimum_no
fi

if [ $fourth_no -lt $minimum_no ]
then
	minimum_no=$fourth_no
else
	minimum_no=$minimum_no
fi

if [ $fifth_no -lt $minimum_no ]
then				
	minimum_no=$fifth_no			
else
	minimum_no=$minimum_no
fi
echo "Minimum Number is: " $minimum_no
