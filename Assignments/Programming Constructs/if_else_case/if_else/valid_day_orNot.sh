#!/bin/bash -x
#Program for "Take a Day & Month from the command Line & print True if Day of Month is between March 20 & June 20 false otherwise"

#Get Month & Day from User
read -p "Enter the Month : " month
read -p "Enter the Day: " day

#Algorithm to check if entered Month & Day is valid or in-valid
if [ $month = 'March' ] || [ $month = 'April' ] || [ $month = 'May' ] || [ $month = 'June' ]
then
	if [ $month = 'March' ] && [ $day -ge 20  ] && [ $day -le 31 ]
	then
		echo "Valid"
	else
		if [ $month = 'April' ] && [ $day -ge 1  ] && [ $day -le 30 ]
		then
			echo "Valid"
		else
			if [ $month = 'May' ] && [ $day -ge 1  ] && [ $day -le 31 ]
			then
				echo "Valid"
			else
				if [ $month = 'June' ] && [ $day -ge 1  ] && [ $day -le 30 ]
				then
					echo "Valid"
				else
					echo "In-valid Month or Day"
				fi
			fi
		fi
	fi
else
	echo "Enter the Month between 'March' & 'June' both inclusive."
fi
