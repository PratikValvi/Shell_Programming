#!/bin/bash -x
#Program for Roll Dice
#1. Roll a die find the number between 1 to 6
#2. Repeat the Die roll and find the result each time
#3. Store the result in dictionary
#4. Repeat till any one of the number has reached 10 times
#5. Find the number that reached maximum times & the one that was for minimum times

#Declare Dictionary & Array
declare -A dice_data
declare -a dice_face_count

#Varaibles
index=0
dice_face_1_count=0
dice_face_2_count=0
dice_face_3_count=0
dice_face_4_count=0
dice_face_5_count=0
dice_face_6_count=0
while $True
do
	dice_face=`expr $((RANDOM%6)) + 1`
	case $dice_face in
		1)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_1_count=`expr $dice_face_1_count + 1`
			;;
		2)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_2_count=`expr $dice_face_2_count + 1`
			;;
		3)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_3_count=`expr $dice_face_3_count + 1`
			;;
		4)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_4_count=`expr $dice_face_4_count + 1`
			;;
		5)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_5_count=`expr $dice_face_5_count + 1`
			;;
		6)
			dice_data[$index]=$dice_face
			index=`expr $index + 1`
			dice_face_6_count=`expr $dice_face_6_count + 1`
			;;
		*)
			;;
	esac
	if (( $dice_face_1_count == 10 )) || (( $dice_face_2_count == 10 )) || (( $dice_face_3_count == 10 )) || (( $dice_face_4_count == 10 )) || (( $dice_face_5_count == 10 )) || (( $dice_face_6_count == 10 ))
	then
		break
	fi
done

if (( $dice_face_1_count == 10 ))
then
	echo "Maximum Dice Face Occured is 'Face 1' :"$dice_face_1_count
elif (( $dice_face_2_count == 10 ))
then
	echo "Maximum Dice Face Occured is 'Face 2' :"$dice_face_2_count
elif (( $dice_face_3_count == 10 ))
then
	echo "Maximum Dice Face Occured is 'Face 3' :"$dice_face_3_count
elif (( $dice_face_4_count == 10 ))
then
	echo "Maximum Dice Face Occured is 'Face 4' :"$dice_face_4_count
elif (( $dice_face_5_count == 10 ))
then
	echo "Maximum Dice Face Occured is 'Face 5' :"$dice_face_5_count
else
	echo "Maximum Dice Face Occured is 'Face 6' :"$dice_face_6_count
fi

#Dice Face Count Value Array
dice_face_count=($dice_face_1_count $dice_face_2_count $dice_face_3_count $dice_face_4_count $dice_face_5_count $dice_face_6_count)

IFS=$'\n'
#Dummy Variable
dummy_var=$(sort -n<<<"${dice_face_count[*]}")
unset IFS
dummy_var=`echo $dummy_var | awk '{print $1}'` 

if (( $dice_face_1_count == $dummy_var ))
then
	echo "Minimum Dice Face Occured is 'Face 1' :"$dice_face_1_count
elif (( $dice_face_2_count == $dummy_var ))
then
	echo "Minimum Dice Face Occured is 'Face 2' :"$dice_face_2_count
elif (( $dice_face_3_count == $dummy_var ))
then
	echo "Minimum Dice Face Occured is 'Face 3' :"$dice_face_3_count
elif (( $dice_face_4_count == $dummy_var ))
then
	echo "Minimum Dice Face Occured is 'Face 4' :"$dice_face_4_count
elif (( $dice_face_5_count == $dummy_var ))
then
	echo "Minimum Dice Face Occured is 'Face 5' :"$dice_face_5_count
else
	echo "Minimum Dice Face Occured is 'Face 6' :"$dice_face_6_count
fi			
