#!/bin/bash
# A shell script that accepts a string from the terminal and echoes a suitable message if it does not have at least 5 characters including the other symbols.

echo ---------------------------
echo -n "Enter a string: "
read str

str_length=$(echo $str | wc --chars)
str_length=$(expr $str_length - 1)

echo ---------------------------
echo "Length of the string: $str_length"

if (($str_length >= 5)); then
    echo ---------------------------
    echo "'$str' is a valid string."
else
    echo ---------------------------
    echo "'$str' is not a valid string."
fi
echo ---------------------------
