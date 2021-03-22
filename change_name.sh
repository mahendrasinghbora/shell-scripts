#!/bin/bash
# A shell script that changes the name of the files passed as arguments to lowercase.

# Checks for the number of arguments
if [ $# -lt 1 ]; then
    echo "Please pass a filename as an argument."
    exit 1
fi

for i in $@; do
    if [ ! -f $i ]; then
        echo -------------------------------------------------
        echo "Either '$i' is not a file or it does not exist."
    else
        echo -------------------------------------------------
        new_name=$(echo "$i" | awk '{print tolower($0)}')
        mv --verbose $i $new_name
    fi
done
echo -------------------------------------------------
