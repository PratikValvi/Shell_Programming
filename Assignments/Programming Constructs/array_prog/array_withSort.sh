#!/bin/bash -x
#Write a program
#1. Generate 10 Random 3 Digit number
#2. Store this random numbers into a array
#3. Then find the 2nd Largest and 2nd smallest element witout sorting array

#Declare Array
declare -a roll_no_array temp_array

#For to use same function for generating 10 Random Numbers
for (( i=0; i<10; i++ ))
do
	roll_no=$((RANDOM%1000))
	roll_no_array[$i]=$roll_no
done

IFS=$'\n'
#Dummy Variable
dummy_var=$(sort -nu<<<"${roll_no_array[*]}")
unset IFS

#Sample Array without affecting the values of Original Array 
index=0
for value in $dummy_var
do
	temp_array[$index]=$value
	index=`expr $index + 1`
done

echo ${temp_array[@]}
echo "2nd Minimum value in array: " ${temp_array[1]}
echo "2nd Maximum value in array: " ${temp_array[$(($index-2))]}
