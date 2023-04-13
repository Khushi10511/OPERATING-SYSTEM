#Q2. WASS to input n elements into an array, search an element using binary search technique.
echo "Enter the size of the array:"
read n

echo "Enter the elements of the array in sorted order:"
for ((i=0; i<$n; i++))
do
	    read arr[$i]
    done

    echo "Enter the element to search for:"
    read num
# perform binary search using loops
left=0
right=$((n-1))
found=false
while [ $left -le $right ]
do
	mid=$(((left+right)/2))
    if [ ${arr[$mid]} -eq $num ]; then
         found=true
      break
      elif [ ${arr[$mid]} -lt $num ]; then
      left=$((mid+1))
   else
     right=$((mid-1))
      fi
done
# print the result of the binary search
if [ $found == true ]; then
	    echo "Element found at index $mid."
    else
	        echo "Element not found in the array."
fi
