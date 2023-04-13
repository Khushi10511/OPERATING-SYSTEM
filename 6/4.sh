echo "Enter the value of n"
read n
echo "Enter the elements of array"
for ((i=0;i<n;i++))
do
	        read a[$i]
	done
	echo "The elements of array are:"
	for ((i=0;i<n;i++))
	do
		      echo ${a[$i]}
		        done
		       echo "Array in reverse order:"
		       for ((i=n-1;i>=0;i--))
		      do
		       echo ${a[$i]}
		          done

