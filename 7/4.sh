# Function to check if a number is even
isEven() {
	if (( $1 % 2 == 0 ))
        then
        return 0  # Even number
    else
           return 1  # Odd number
        fi
	}
# Input the array
  echo "Enter the number of elements in the array:"
  read n
  echo "Enter the array elements:"
  for (( i=0; i<$n; i++ ))
   do
    read a[$i]
   done
  # Initialize the arrays
    declare -a oddSum
    declare -a evenSum
   declare -a product
   # Find the sums of odd and even distinct pairs
   oddIndex=0
   evenIndex=0
   oddSumTotal=0
   evenSumTotal=0
   for (( i=0; i<$n-1; i++ ))
   do
   for (( j=i+1; j<$n; j++ ))
   do
   sum=$(( ${a[$i]} + ${a[$j]} ))
        if isEven $sum
	             then
         # Even sum
           found=0
            for k in "${evenSum[@]}"
             do
             if [ $k -eq $sum ]
                then
                    found=1
                 break
             fi
            done
            if [ $found -eq 0 ]
	            then
               evenSum[evenIndex]=$sum
               ((evenIndex++))
             evenSumTotal=$(( evenSumTotal + sum ))
            fi
   else
            # Odd sum
             found=0
             for k in "${oddSum[@]}"
	            do
                    if [ $k -eq $sum ]
                  then
                   found=1
                 break
              fi
            done
            if [ $found -eq 0 ]
            then
                oddSum[oddIndex]=$sum
                   ((oddIndex++))
                 oddSumTotal=$(( oddSumTotal + sum ))
           fi
        fi
    done
done
# Find the smallest element in the array
min=${a[0]}
for i in "${a[@]}"
do
    if [ $i -lt $min ]
        then
        min=$i
    fi
done
   remainSum=$(( oddSumTotal + evenSumTotal + min ))
   # Find the product of odd and even numbers
   oddProduct=1
   evenProduct=1
   for i in "${a[@]}"
   do
      if isEven $i
       then
      evenProduct=$(( evenProduct * i ))
     else
      oddProduct=$(( oddProduct * i ))
       fi
  done

  # Display the results
  echo "Odd distinct pairs: ${oddSum[@]}"
  echo "Even distinct pairs: ${evenSum[@]}"
  echo "Remain sum: $remainSum"
  echo "Odd product: $oddProduct"
  echo "Even product: $evenProduct"
