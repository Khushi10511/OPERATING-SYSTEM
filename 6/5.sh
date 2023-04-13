#!/bin/bash

# Read in n from the user
echo "Enter the number of elements: "
read n

# Initialize an empty array to store the elements
declare -a arr

# Read in the elements from the user and store them in the array
echo "Enter the elements: "
for (( i=0; i<n; i++ ))
do
	  read arr[$i]
  done

  # Initialize an empty array to store the reversed elements
  declare -a reverse_arr

  # Copy the elements from the first array into the second array in reverse order
  for (( i=n-1, j=0; i>=0; i--, j++ ))
  do
	    reverse_arr[$j]=${arr[$i]}
    done

    # Display the reversed array
    echo "The reversed array is: "
    for (( i=0; i<n; i++ ))
    do
	      echo ${reverse_arr[$i]}
      done

