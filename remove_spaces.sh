#!/bin/bash
# A shell script which reads the contents in a text file and removes all the blank spaces in them and redirects the output to a file.

echo ----------------------------
echo -n "Name of the file: "
read file

if [ ! -f $file ]; then
    echo -------------------------------------------------
    echo "Either '$file' is not a file or it does not exist."
    echo -------------------------------------------------
    exit 1
fi

modified="_modified"

echo -------------------------------------------------
echo "Contents of the file '$file'"
echo -------------------------------------------------
cat $file
echo -------------------------------------------------

new_file="$file$modified"
sed 's/[ ]//g' $file >$new_file
echo "Contents of the file '$new_file'"
echo -------------------------------------------------
cat $new_file
echo -------------------------------------------------
