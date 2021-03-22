#!/bin/bash
# A shell program to sort a given file which consists of a list of numbers, in ascending order.

# Checks for an argument
if [ $# -eq 0 ]; then
    echo -n "Name of the file: "
    read file
else
    file=$1
fi

if [ ! -f $file ]; then
    echo "'$file' is not a file. Aborting!"
    exit 1
fi

echo "Contents of the file '$file'"
cat $file

sort --numeric-sort $file --output $file

echo "'$file' has been sorted in ascending order."
cat $file
