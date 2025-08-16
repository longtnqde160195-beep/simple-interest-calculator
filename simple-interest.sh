#!/bin/bash

# A simple script to calculate simple interest.
# It takes three arguments: principal, rate, and time.

# Check if the number of arguments is correct
if [ "$#" -ne 3 ]; then
    echo "Usage: ./simple-interest.sh <principal> <rate> <time>"
    exit 1
fi

# Assign arguments to variables for readability
principal=$1
rate=$2
time=$3

# Perform the simple interest calculation
# The formula is (Principal * Rate * Time) / 100
# Use 'bc' for floating-point arithmetic
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Print the result
echo "The principal amount is: $principal"
echo "The annual rate is: $rate%"
echo "The time in years is: $time"
echo "The simple interest is: $interest"
