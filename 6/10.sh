#Q10. WASS to swap the adjacency pair of an array and display the result. If the array stores odd no. of element then the last element swap with the first element.
#!/bin/bash

# Declare the array
arr=(1 2 3 4 5)

# Determine the length of the array
length=${#arr[@]}

# Swap the adjacency pair of the array
for ((i=0; i<length; i+=2))
do
    if [ $i -lt $((length-1)) ]
       then
        temp=${arr[$i]}
       arr[$i]=${arr[$((i+1))]}
       arr[$((i+1))]=$temp
   fi
    done
  # Swap the first and last element if the array stores odd no. of element
   if [ $((length%2)) -eq 1 ]
  then
   temp=${arr[0]}
   arr[0]=${arr[$((length-1))]}
    arr[$((length-1))]=$temp
    fi
   # Print the result
    echo "Result: ${arr[@]}"
						    
