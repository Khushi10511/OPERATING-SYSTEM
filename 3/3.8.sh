#8. WASS to find out the 2nd greatest number out of 3 number.
echo " Enter value of a "
read a
echo " Enter value of b "
read b
echo " Enter value of c "
read c
if [ $a -gt $b -a $a -gt $c ] 
then
if [ $b -gt $c ]
then
	echo " $b is 2nd largest "
else
	echo " $c is 2nd largest "
fi
else
if [ $b -gt $a -a $b -gt $c ]
then
if [ $a -gt $c ]
then
	        echo " $a is 2nd largest "
	else
		        echo " $c is 2nd largest "
fi
		else
		if [ $b -gt $a ]
		then
			        echo " $b is 2nd largest "
			else
				        echo " $a is 2nd largest "
fi
fi
fi 

