#!/bin/bash
# A shell script to translate all the characters to lowercase in a given text file.

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

cat $file | tr "[A-Z]" "[a-z]" >temp.txt | mv temp.txt $file

echo "All letters in the file '$file' have been converted to lowercase."
echo ---------------------------------------------------------------------------
cat $file
echo ---------------------------------------------------------------------------
