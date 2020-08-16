#!/bin/bash 
#Program for "Get Range of Numbers from user & Display all Prime Numbers in that Range"

#Declare Array to store Prime Numbers
declare -a prime_numbers
index=0
#Get the User Input
read -p "Start of Range from : " start_of_range
read -p "End of Range to : " end_of_range

for (( number=$start_of_range; number<=$end_of_range; number++ ))
do
	#Algorithm for checking a Non Prime Number
	if (( $number == 1 ))
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
	if (( $flag == 0 ))
	then
		flag=1
	else	
		prime_numbers[$index]=$number
		index=`expr $index+1`
		flag=1
	fi
done

echo "From range of "$start_of_range "to "$end_of_range
echo "Prime Numbers are: "${prime_numbers[*]}
