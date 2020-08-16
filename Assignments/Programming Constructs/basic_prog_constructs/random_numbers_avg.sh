#!/bin/bash -x
#Program of "Get Random Five Numbers of Two Digits & find their Sum & Average."

#Declared & defined five varaibles for Random Numbers
random_no_1=$((RANDOM%100))
random_no_2=$((RANDOM%100))
random_no_3=$((RANDOM%100))
random_no_4=$((RANDOM%100))
random_no_5=$((RANDOM%100))

#Computed Numerical Addition & stored in varaible 'sum'
sum=$(($random_no_1+$random_no_2+$random_no_3+$random_no_4+$random_no_5))

#Computed Average & stored in varaible 'avg'
avg=`echo "$sum/5" | bc -l`
avg=`printf %.2f $avg`

#Displaying calculated values of 'sum' & 'avg'
echo "The Sum is : "$sum "& The Average is : "$avg
