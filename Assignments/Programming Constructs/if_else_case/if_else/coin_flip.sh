#!/bin/bash -x
#Program for "Simulate a coin flip & print out 'Heads' or 'Tails' accordingly"

#Variable
coin_face=$((RANDOM%2))

#Algorithm to Display 'Heads' or 'Tails' randomly
if [ $coin_face == 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
