#!/bin/bash
# A shell script to combine any three text files into a single file (append them in the order as they appear in the arguments) and display the word count.

# Checks for the number of arguments
if [ $# -lt 2 ]; then
    echo "Please pass at least two filenames as arguments."
    exit 1
fi

for i in "$@"; do
    if [ ! -f $i ]; then
        echo "Either '$i' is not a file or it does not exist."
        exit 1
    else
        echo ---------------------------------------
        echo "Contents of the file '$i'"
        echo ---------------------------------------
        cat $i
    fi
done

echo ---------------------------------------
echo "Combining the files."
echo ---------------------------------------

for i in "$@"; do
    if [ ! -f $i ]; then
        echo "Either '$i' is not a file or it does not exist."
        exit 1
    else
        cat $i
    fi
done >appended_file.txt

echo "Contents of the file 'appended_file.txt'"
echo ---------------------------------------
cat appended_file.txt
echo ---------------------------------------
