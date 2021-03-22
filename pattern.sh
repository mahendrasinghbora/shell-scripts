#!/bin/bash
#    \
#   \ \ \
#  \ \ \ \ \

for ((i = 0; i < 3; i++)); do
    for ((k = 0; k < 3 - i; k++)); do
        echo -n "  "
    done
    for ((j = 0; j < 2 * i + 1; j++)); do
        echo -n "\  "
    done
    echo
done
