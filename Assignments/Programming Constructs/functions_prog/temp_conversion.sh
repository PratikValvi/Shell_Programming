#!/bin/bash -x
#Program of "Help user find degF or degC based on their Conversion Selection. Use Clase Statements and ensure the inputs are within the freezing points (0 C/32 F) and the boiling point of water (100 C/212 F)"
#a. degF = (degC*9/5) + 32
#b. degC = (degF-32) * 5/9

echo "Select your option by entering 'a' or 'b'"
echo "a. Convert Celsius to Fahrenheit"
echo "b. Convert Fahrenheit to Celsius"
read check_case

#Function to Convert Celsius to Fahrenheit
_degC_F () {
	
	degF=`echo "($degC*9/5)+32" | bc -l`
	degF=`printf %.2f $degF`
	return $degF
}
#Function to Convert Fahrenheit to Celsius
_degF_C () {

	degC=`echo "($degF-32)*5/9" | bc -l`
	degC=`printf %.2f $degC`
	return $degC
}

case $check_case in 
	a)
		echo "Celsius to Fahrenheit Converter"
		echo "Enter any Celsius value from 0 to 100"
		read input
		if (( $input >= 0 )) && (( $input <= 100 ))
		then
			degC=$input
			#Calling Function Celsius to Fahrenheit Converter 
			_degC_F
			echo "The "$degC "Degree Celsius is "$degF "Degree Fahrenheit."
		else
			echo "Please enter any Celsius value from 0 to 100"
			echo "Thank You"
		fi
		;;
	
	b)
		echo "Fahrenheit to Celsius Converter"
		echo "Enter any Fahrenheit value from 32 to 212"
		read input
		if (( $input >= 32 )) && (( $input <= 212 ))
		then
			degF=$input
			#Calling Function Fahrenheit to Celsius Converter
			_degF_C
			echo "The "$degF "Degree Fahrenheit is "$degC "Degree Celsius."
		else
			echo "Please enter any Fahrenheit value from 32 to 212"
			echo "Thank You"
		fi
		;;
	*)
		echo "Please enter 'a' or 'b'"
		echo "Thank You"
		;;
esac			
