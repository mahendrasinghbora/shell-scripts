#!/bin/bash
# A shell program unique, which discards all but one of successive identical lines from standard input and writes the unique lines to standard output. By default, unique checks the whole line for uniqueness.

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
echo "Values after the unique operation."
echo -----------------------------------------

for ((i = 0; i < $k - 1; i++)); do
    if [ "${str[i]}" != "${str[i + 1]}" ]; then
        echo ${str[i]}
    fi
done
echo ${str[k - 1]}
echo -----------------------------------------
