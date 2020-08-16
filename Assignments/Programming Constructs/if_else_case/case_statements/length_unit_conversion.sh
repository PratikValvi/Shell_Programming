#!/bin/bash -x
#Program for "Unit conversions for following Options"
#1.Feet to Inch
#2.Feet to Meter
#3.Inch to Feet
#4.Meter to Feet

echo "Select option by Entering Number"
echo ""
echo "1.Feet to Inch"
echo "2.Feet to Meter"
echo "3.Inch to Feet"
echo "4.Meter to Feet"
read check_option

#Algorithm to get input from user & compute respective output also display the output
case $check_option in
	1)
		#Feet to Inch Conversion
		echo "**********Feet to Inch**********"
		echo "Enter value in Feet"
		read i_feet
		o_inch=`echo "$i_feet*12" | bc -l`
		o_inch=`printf %.2f $o_inch`
		echo "$i_feet Feet are $o_inch Inches"
		;;
	
	2)
		#Feet to Meter Conversion
		echo "**********Feet to Meter**********"
		echo "Enter value in Feet"
		read i_feet
		o_meter=`echo "$i_feet/3.281" | bc -l`
		o_meter=`printf %.2f $o_meter`
		echo "$i_feet Feet are $o_meter Meters"
		;;
		
	3)
		#Inch to Feet Conversion
		echo "**********Inch to Feet**********"
		echo "Enter value in Inch"
		read i_inch
		o_feet=`echo "$i_inch/12" | bc -l`
		o_feet=`printf %.2f $o_feet`
		echo "$i_inch Inch are $o_feet Feets"
		;;
		
	4)
		#Meter to Feet Conversion
		echo "**********Meter to Feet**********"
		echo "Enter value in Meter"
		read i_meter
		o_feet=`echo "$i_meter*3.281" | bc -l`
		o_feet=`printf %.2f $o_feet`
		echo "$i_meter Meter are $o_feet Feets"
		;;
	*)
		echo "Please Enter Number from 1 to 4"
		echo "**********Thank You************"
		;;
esac
