#!/bin/bash

echo "Hello World!"

greeting="Welcome"
user=$(whoami)
day=$(date +%A)
input=/home/$user
output=/tmp/${user}_home_$(date+%Y-%m-%d_%H%M%S).tar.gz

echo "$greeting back $user! Today is $day, which is the best day of the entire week."
echo "Your Bash shell bersion is $BASH_VERSION. Enjoy!"

#The > notation is used to redirect stdout to a file whereas 2> notation is used to redirect stderr and &> is used to redirect both stdout and stderr.

function total_files {
	find $1 -type f | wc -l
}

function total_directories {
	find $1 -type d | wc -l

}

echo -n "Files:"
total_files $input
echo -n "Directories:"
total_directories $input

