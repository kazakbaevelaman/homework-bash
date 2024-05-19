#!/bin/bash
current_year=$(date +"%Y")
future_year=2030
echo 
read -n 4 -p ">Please enter your year of birth to calculate your age: " year
echo
echo "You are $(($current_year-$year)) years old now"
echo "You were $((2020-$year)) years old in 2020"
echo "You will be $(($future_year-$year)) years old in $future_year" 
