#grade system
echo " Enter your marks "
read m
if [ $m -le 100 -a $m -ge 90 ]
then
	echo " GRADE-O "
elif [ $m -le 89 -a $m -ge 80 ]
then 
	echo " GRADE-E "
elif [ $m -le 79 -a $m -ge 70 ]
then
	echo " GRADE-A "
else
	echo " GRADE-B "
fi
