#!/bin/bash
# A shell script to display the processes running on the system for every 30 seconds, but only for 3 times.

i=0
echo ---------------------------------
echo "Processes running on the system"
echo ---------------------------------

while (($i < 3)); do
    ps
    sleep 30
    i=$(expr $i + 1)
    echo ----------------------------
done
