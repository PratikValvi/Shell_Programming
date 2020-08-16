#!/bin/bash -x
#Program for "Where a gambler starts with Rs 100 and placces Re 1 bet until he?she goes broke i.e. no more money to gamble or reaches the goal of Rs 200. Keep track of times won & number of bets made.

bet_won=0
bet_lost=0
money_left=100
money_earned=0
bets_made=0

#Algorithm to place bet & watch limit of Money Left & Money Earned
while $True
do
	bet=$((RANDOM%2))
	if (( $bet == 0 ))
	then
		bet_lost=`expr $bet_lost + 1`
		money_left=`expr $money_left - 1`
		bets_made=`expr $bets_made + 1`
	else
		bet_won=`expr $bet_won + 1`
		money_earned=`expr $money_earned + 2`
		bets_made=`expr $bets_made + 1`
	fi
	
	#Whichever comes first if Money Left is zero or Money Earned is Two Hundered the loop is stoped
	if (( $money_left == 0 )) || (( $money_earned == 200 ))
	then
		break
	fi 
done

if (( $money_earned == 200 ))
then
	echo "The Gambler got Lucky & Won"
	echo "Money Earned: "$money_earned
elif (( $money_left == 0 ))
then
	echo "Better Luck Next Time"
	echo "Money Left: "$money_left
else
	echo ";;"
fi

echo "Bets Placed : "$bets_made
echo "Bets Won : "$bet_won
echo "Bets lost : "$bet_lost

