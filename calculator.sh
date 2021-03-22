#!/bin/bash
# A shell program to simulate a simple calculator.

echo -------------------
echo "A Simple Calculator"
echo -------------------

echo -n "First Number: "
read first
echo -n "Second Number: "
read second

echo -----------------------
echo "1 - Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo "4 - Division"
echo "5 - Remainder (Modulus)"
echo -----------------------

echo -n "Choice: "
read choice

case $choice in
1)
    echo -----------------------
    echo "Result: $first + $second = $((first + second))"
    echo -----------------------
    ;;
2)
    echo -----------------------
    echo "Result: $first - $second = $((first - second))"
    echo -----------------------
    ;;
3)
    echo -----------------------
    echo "Result: $first * $second = $((first * second))"
    echo -----------------------
    ;;
4)
    echo -----------------------
    echo "Result: $first / $second = $((first / second))"
    echo -----------------------
    ;;
5)
    echo -----------------------
    echo "Result: $first % $second = $((first % second))"
    echo -----------------------
    ;;
*)
    echo "Please enter a valid option!"
    ;;
esac
