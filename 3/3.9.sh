#Q9. WASS to input a number not more than 4 digit, and find out how many digits of that number
echo "Enter a number"
read num

sum=0
count=0
while [ $num -gt 0 ]
do
	    mod=`expr $num % 10`    #It will split each digits
	    count=`expr $count + 1`
	        sum=`expr $sum + $mod`  #Add each digit to sum
		    num=`expr $num / 10`    #divide num by 10.
	    done
echo "No of digits is $count "
	    echo "Sum of digits is $sum "
