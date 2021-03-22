#!/bin/bash
# A shell program to count the following in a text file
# 1. Number of vowels in a given text file.
# 2. Number of blank spaces.
# 3. Number of characters.
# 4. Number of symbols.
# 5. Number of lines.

# Checks for an argument
if [ $# -eq 0 ]; then
    echo ----------------------------------------
    echo -n "Name of the file: "
    read file
else
    file=$1
fi

if [ ! -f $file ]; then
    echo ----------------------------------------
    echo "'$file' is not a file. Aborting!"
    echo ----------------------------------------
    exit 1
fi

echo ----------------------------------------
echo -n "Number of vowels in '$file': "
grep -o [aeiouAEIOU] $file | wc --lines
echo ----------------------------------------

echo -n "Number of blank spaces in '$file': "
grep -o ' ' $file | wc --lines
echo ----------------------------------------

echo -n "Number of characters in '$file': "
wc --chars <$file
echo ----------------------------------------

echo -n "Number of symbols in '$file': "
tr --delete --complement "\'"'!@#$%^&*()_=,.<>/?;:{}[]\|\"+-' <$file | wc --chars
echo ----------------------------------------

echo -n "Number of lines in '$file': "
wc --lines <$file
echo ----------------------------------------
