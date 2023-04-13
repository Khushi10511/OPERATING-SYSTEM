numbers=()
for (( i=1; i<=5; i++ ))
do
	  echo "Enter number $i:"
	    read numbers[$i]
	        #numbers+=($num)
done
	echo "The numbers you entered are: ${numbers[@]}"
        




