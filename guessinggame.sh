#!/usr/bin/env bash
# file: guessinggame.sh

function user_input {
	echo 'Welcome to "Guessing Game"'
	echo "How many files do you think are in the current directory?"
	echo "Type in an integer and press Enter:"
	read response
	echo "You entered: $response"
}

user_input

number_of_files=$( ls | wc -l )

while  [[ $response -ne $number_of_files ]]
do
	if [[ $response -lt $number_of_files ]]
	then
		echo "Sorry, that number is too low. Please try again."
		user_input
	else
		if [[ $response -gt $number_of_files ]]
		then
			echo "Sorry, that number is too high. Please try again."
			user_input			fi
		fi
	fi
done

if [[ $response -eq $number_of_files ]]
then
	echo "Congratulations! You're our winner!"
fi
