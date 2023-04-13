#Q1. WASS to input n numbers and find out the sum and average of odd and even numbers.(without using array

# initialize variables
n=0
sum_odd=0
sum_even=0
count_odd=0
count_even=0

# read in n
echo "Enter the number of integers: "
read n

# loop through each integer
for (( i=1; i<=n; i++ ))
do
  echo "Enter integer $i: "
   read num
      # check if the integer is even or odd
       if (( $num % 2 == 0 ))
  then
      # add to even sum and increment even count
         sum_even=$((sum_even + num))
      count_even=$((count_even + 1))
        else
    # add to odd sum and increment odd count
      sum_odd=$((sum_odd + num))
    count_odd=$((count_odd + 1))
     fi
      done
     # calculate the averages
      if (( count_even > 0 ))
     then
    avg_even=$((sum_even / count_even))
else
  avg_even=0
      fi
     if (( count_odd > 0 ))
      then
      avg_odd=$((sum_odd / count_odd))
else
  avg_odd=0
      fi
    # print out the results
     echo "Sum of even numbers: $sum_even"
     echo "Average of even numbers: $avg_even"
     echo "Sum of odd numbers: $sum_odd"
     echo "Average of odd numbers: $avg_odd"

