#!/bin/bash
# A shell script that, given a file name as the argument will write the even numbered line to a file with name evenfile and odd numbered lines to a file called oddfile.

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
    if [ $flag -eq 0 ]; then
        echo $line >>evenfile
    else
        echo $line >>oddfile
    fi
    line_number=$(expr $line_number + 1)
done <$file

echo -----------------------------------------
echo "Contents of the file '$file'"
echo -----------------------------------------
cat --number $file

echo -----------------------------------------
echo "Contents of the file 'evenfile'"
echo -----------------------------------------
cat --number evenfile

echo -----------------------------------------
echo "Contents of the file 'oddfile'"
echo -----------------------------------------
cat --number oddfile
echo -----------------------------------------
