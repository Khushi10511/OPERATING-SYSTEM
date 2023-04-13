#WASS to input n elements to an array and reverse the array without taking any extra array.
array=(1 2 3 4 5 6 7)
echo "${array[@]}"
min=0
max=$(( ${#array[@]} -1 ))

while [[ min -lt max ]]
do
	    # Swap current first and last elements
	        x="${array[$min]}"
		    array[$min]="${array[$max]}"
		        array[$max]="$x"

			    # Move closer
			        (( min++, max-- ))
			done

			echo "${array[@]}"
