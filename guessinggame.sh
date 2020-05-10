#!/bin/sh
# I am using "guess" as input variable which accepts input from the user

Hello() 
{	
	while [[ "$guess" != $(ls -1 | wc -l) ]];        
	do
        	echo "Please guess the numbe of file in directory "
        	read guess
		# Check whether they are equal 
        	if [[ "$guess" -eq $(ls -1 | wc -l) ]]; then
                	echo "congrats! you guess this right"
		# Check whether they are greater than or not 	
        	elif [[ "$guess" -gt $(ls -1 | wc -l)  ]]; then
                	echo "Sorry, but the number is too big"
        	else
                	echo "Sorry, but the number is too small"
        	fi
	done
}

Hello
