#!/bin/bash

echo "Enter a decimal number: "
read decimal_number

binary_number=$(echo "obase=2;$decimal_number" | bc)

echo "The binary equivalent of $decimal_number is $binary_number"

