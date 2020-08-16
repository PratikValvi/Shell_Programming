#!/bin/bash 
#Program for "Unit Conversion & Calculating Area"

echo "Enter number to select choice"
echo "**********OPTIONS************"
echo "1. Simple Unit Conversion"
echo ""
echo "2. Calculate Area of Single Rectangular plot"
echo ""
echo "3. Calculate Area of Multiple plots"
read case_check
case $case_check in
	1) 
		echo "**********Simple Conversion**********"
		echo ""
		echo "1. Feet to Inch"
		echo "2. Inch to Feet"
		read case_check_1
		case $case_check_1 in
			1)
				#Conversion of Feet to Inch
				echo "Enter your value: " 
				read f_2_i
				f_2_i_result=`echo "$f_2_i*12" | bc -l`
				f_2_i_result=`printf %.2f $f_2_i_result`
				echo "You Entered "$f_2_i "Feet Which is "$f_2_i_result "Inch."
				;;
			2)
				#Conversion of Inch to Feet
				echo "Enter your value: " 
				read i_2_f
				i_2_f_result=`echo "$i_2_f/12" | bc -l`
				i_2_f_result=`printf %.2f $i_2_f_result`
				echo "You Entered "$i_2_f "Inch Which is "$i_2_f_result "Feet."
				;;
			*)
				echo "Please Enter 1 or 2"
				;;
		esac
		;;
	2)
		echo "**********Calculate Area**********"
		echo ""
		echo "1. Feet to Feet"
		echo "2. Feet to Inch"
		echo "3. Inch to Feet"
		echo "4. Inch to Inch"
		read case_check_2
		echo ""
		echo "Enter Length value: " 
		read length
		echo "Enter Breadth value: " 
		read breadth

		case $case_check_2 in
			1)
				#Input in Feet & Calculating Area Output in Feet
				area_result=$(($length*$breadth))
				area_result=`printf %.2f $area_result`
				echo "Area is: "$area_result "Square Feet"
				;;
			2)
				#Input in Feet & Calculating Area Output in Inch
				length_in_inch=`echo "$length*12" | bc -l`
				length_in_inch=`printf %2.f $length_in_inch`
				breadth_in_inch=`echo "$breadth*12" | bc -l`
				breadth_in_inch=`printf %2.f $breadth_in_inch`
				area_result=$(($length_in_inch*$breadth_in_inch))
				area_result=`printf %.2f $area_result`
				echo "Area is: "$area_result "Square Inch"
				;;
			3)
				#Input in Inch & Calculating Area Output in Feet
				length_in_feet=`echo "$length/12" | bc -l`
				length_in_feet=`printf %2.f $length_in_feet`
				breadth_in_feet=`echo "$breadth/12" | bc -l`
				breadth_in_feet=`printf %2.f $breadth_in_feet`
				area_result=$(($length_in_feet*$breadth_in_feet))
				area_result=`printf %.2f $area_result`
				echo "Area is: "$area_result "Square Feet"
				;;
			4)
				#Input in Inch & Calculating Area Output in Inch
				area_result=$(($length*$breadth))
				area_result=`printf %.2f $area_result`
				echo "Area is: "$area_result "Square Inch"
				;;
			*)
				echo "Please Enter 1 or 2 or 3 or 4"
				;;
		esac
		;;
	3)
		echo "**********Calculate Total Area**********"
		echo ""
		echo "Area of Single plot is in Square Foot: "
		read area_in_sqfoot
		#Input in Sq Foot & Calculating in Acers
		area_in_acers=`echo "$area_in_sqfoot/43560" | bc -l`
		area_in_acers=`printf %.2f $area_in_acers`
		echo ""
		echo "Enter number of Total plots: "
		read no_of_plots
		total_area_in_acers=`echo "$area_in_acers*$no_of_plots" | bc -l`
		total_area_in_acers=`printf %.2f $total_area_in_acers`
		echo "Total area of "$no_of_plots "plots is "$total_area_in_acers "Acers"
		;;	
	*)
		echo "Please Enter 1 or 2 or 3"
		;;
esac

