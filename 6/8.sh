#Q8. WASS to concatenate two array and display the resultant array.
#!/bin/bash

# Declare the first array
arr1=(1 2 3)

# Declare the second array
arr2=(4 5 6)

# Concatenate the two arrays
result_arr=("${arr1[@]}" "${arr2[@]}")

# Display the resultant array
echo "Resultant array: ${result_arr[@]}"

