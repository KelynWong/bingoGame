#!/usr/bin/env bash

needle=$(shuf -i 1-100 -n1)
echo "Guess a number between 1 and 100"
while true; do
	read guess
	if [ "$needle" -eq "$guess" ]; then
		echo "Bingo! The number was ${needle}"
		break
	else
		if [ "$needle" -gt "$guess" ]; then
			echo "Try a greater number!"
		else
			echo "Try a lesser number!"
		fi
	fi
	echo "Guess again: "
done
