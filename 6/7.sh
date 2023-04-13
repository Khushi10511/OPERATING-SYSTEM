#Q7. WASS to input n elements into an array and arrange the array in such a way that all the odd numbers come to the beginning of the array and all the odd numbers place to the end of the array.
#!/bin/bash

# Input the number of elements
echo "Enter the number of elements: "
read n

# Declare an empty array
arr=()

# Input the elements into the array
echo "Enter the elements: "
for ((i=0; i<n; i++))
do
	    read arr[$i]
    done

    # Arrange the array with odd numbers at the beginning and even numbers at the end
    for ((i=0; i<n; i++))
    do
    if [ $((arr[$i]%2)) -eq 0 ]
    then
      even_arr+=(${arr[$i]})
       else
      odd_arr+=(${arr[$i]})
   fi
    done
   # Combine the two arrays
    final_arr=(${odd_arr[@]} ${even_arr[@]})
  # Print the final array
   echo "Final array: ${final_arr[@]}"
	    
