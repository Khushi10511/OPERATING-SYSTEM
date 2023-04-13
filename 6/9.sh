#Q9. WASS to convert the integer to its equivalent binary number by using array.
#!/bin/bash

# Input the integer to be converted
echo "Enter an integer: "
read num

# Declare an empty array to store the binary digits
binary=()

# Convert the integer to binary
while [ $num -gt 0 ]
do
	    remainder=$((num%2))
	        binary=($remainder "${binary[@]}")
		    num=$((num/2))
	    done

	    # Print the binary number
	    echo "Binary number: ${binary[@]}"

