#!/bin/bash

echo "Hello World!"

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week."
echo "Your Bash shell bersion is $BASH_VERSION. Enjoy!"




