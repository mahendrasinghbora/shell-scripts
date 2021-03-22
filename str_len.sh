#!/bin/bash
# A shell script to echo the string length of a given string as argument.

# Checks for the number of arguments
if [ $# -lt 1 ]; then
    echo "Please pass a string as an argument."
    exit 1
fi

str=$1

str_length=$(echo $str | wc --chars)
str_length=$(expr $str_length - 1)

echo ----------------------------------------
echo "Entered String: $str"
echo ----------------------------------------
echo "Length of the string '$str': $str_length"
echo ----------------------------------------
