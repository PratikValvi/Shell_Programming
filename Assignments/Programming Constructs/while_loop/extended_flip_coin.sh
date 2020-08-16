#!/bin/bash
#Program for "Flip coin till either Heads or Tails win 11 times"

heads=0
tails=0
while $True
do
	coin_face=$((RANDOM%2))
	if (( $coin_face == 0 ))
	then
		echo "It's Heads!"
		heads=`expr $heads + 1`
	else
		echo "It's Tails!"
		tails=`expr $tails + 1`
	fi
	#Whichever becomes 11 first breaks the While Loop
	if (( $heads == 11  )) || (( $tails == 11 ))
	then
		break
	fi
done

#Check values of Heads & Tails & decide winner
if (( $heads > $tails ))
then
	echo "The Winner is Heads!"
else
	echo "The Winner is Tails!"
fi
