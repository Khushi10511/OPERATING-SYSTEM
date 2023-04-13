#3 different triangle type
echo " Enter 1st side "
read a
echo " Enter 2nd side "
read b
echo " Enter 3rd side "
read c
if [ $a -eq $b -a $b -eq $c ]
then
	echo " Equilateral "
elif [ $a -eq $b -o $b -eq $c ]
then
	echo " Isosceles "
else
	echo " Scalene "
fi


