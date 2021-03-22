#!/bin/bash
# Rewrite the unique program so that it can optionally accept a file name on the command line and redirect the output to that file.

echo -----------------------------------------
echo "Enter values. Enter *stop* when all done."
echo -----------------------------------------

declare -a str

k=0

while true; do
    read input
    if [ "$input" == "*stop*" ]; then
        break
    fi
    str[k]=$input
    k=$(expr $k + 1)
done

echo -----------------------------------------
echo "Performing the operation."
echo -----------------------------------------

echo -n "Name of the file to store the output: "
read file
echo -----------------------------------------

for ((i = 0; i < $k - 1; i++)); do
    if [ "${str[i]}" != "${str[i + 1]}" ]; then
        echo ${str[i]}
    fi
done >$file
echo ${str[k - 1]} >>$file

echo "Contents of the file '$file'"
echo -----------------------------------------
cat $file
echo -----------------------------------------
