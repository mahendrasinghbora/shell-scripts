#!/bin/bash
# A shell program to convert all lowercase letters in a file to uppercase letters.

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
echo "Contents of the file '$file'"
echo ----------------------------------------
cat $file
echo ----------------------------------------

cat $file | tr "[a-z]" "[A-Z]" >temp.txt | mv temp.txt $file

echo "All lowercase letters in the file '$file' have been converted to uppercase letters."
echo -----------------------------------------------------------------------------------------
cat $file
