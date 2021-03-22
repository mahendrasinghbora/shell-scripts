#!/bin/bash
# A shell script which deletes all the even numbered lines in a text file.

if [ $# -ne 1 ]; then
    echo -----------------------------------------
    echo -n "Name of the file: "
    read file
else
    file=$1
fi

if [ ! -f $file ]; then
    echo -----------------------------------------
    echo "'$file' is not a file. Aborting!"
    echo -----------------------------------------
    exit 1
fi

line_number=1

while read line; do
    flag=$(expr $line_number % 2)
    if [ $flag -ne 0 ]; then
        echo $line >>temp
    fi
    line_number=$(expr $line_number + 1)
done <$file

echo -----------------------------------------
echo "Contents of the file '$file'"
echo -----------------------------------------
cat --number $file

mv temp $file

echo --------------------------------------------------------------------------------------
echo "Contents of the file '$file' after deletion of all the even numbered lines."
echo --------------------------------------------------------------------------------------
cat --number $file
echo --------------------------------------------------------------------------------------
