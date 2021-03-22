#!/bin/bash
# A shell program to find the largest integer among the three integers given as arguments. [It works even when there are more than three arguments.]

# Checks for the number of arguments
if [ $# -lt 3 ]; then
    echo "Insufficient number of arguments. Please pass at least 3 arguments."
    exit 1
fi

max=$1

# Finds the maximum integer
for i in $@; do
    if [ $i -gt $max ]; then
        max=$i
    fi
done

echo -n "List of Integers: "

for i in $@; do
    echo -n "$i  "
done

echo
echo "Largest Integer: $max"
