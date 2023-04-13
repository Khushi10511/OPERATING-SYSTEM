#greatest no among 3 no's
echo " Enter value of a "
read a
echo " Enter value of b "
read b
echo " Enter value of c "
read c
if [ $a -gt $b -a $a -gt $c ]
then
	        echo " $a is greatest "
	elif [ $b -gt $a -a $b -gt $c ]
	then
		        echo " $b is greatest "
		else
			        echo " $c is greatest "
fi
