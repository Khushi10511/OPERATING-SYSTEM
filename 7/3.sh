#Q3. WASS to input 2 array of n and m numbers of element in sorted manner, merge that two array in such a way
#that the resultant array should be in sorted manner, without apply the sorting to the resultant array.
echo "Enter the size of the first array: "
read m

# Input the first array
echo "Enter the elements of the first array in sorted manner: "
for (( i=0; i<$m; i++ ))
do
	  read a[$i]
  done

  echo "Enter the size of the second array: "
  read n

  # Input the second array
  echo "Enter the elements of the second array in sorted manner: "
  for (( i=0; i<$n; i++ ))
  do
	    read b[$i]
    done
   
 i=0
 j=0
 k=0
 while [ $i -lt $m ] && [ $j -lt $n ]
 do
    if [ ${a[$i]} -le ${b[$j]} ]; then
          result[$k]=${a[$i]}
         i=$((i+1))
        else
        result[$k]=${b[$j]}
        j=$((j+1))
     fi
     k=$((k+1))
done
# add any remaining elements from the first array
 while [ $i -lt $m ]
do
     result[$k]=${a[$i]}
        i=$((i+1))
   k=$((k+1))
     done
    # add any remaining elements from the second array
     while [ $j -lt $n ]
     do
         result[$k]=${b[$j]}
     j=$((j+1))
         k=$((k+1))
 done

echo "Sorted resultant array: ${result[@]}"
