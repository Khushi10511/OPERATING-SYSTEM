echo " Enter starting point "
read start
echo "Enter ending point "
read end
while [ $start -le $end ]
do
	num=$start
	i=0
	sum=0
	while[ $i -lt $num ]
	do
		if [ $num % $i -eq 0 ]
		then
			sum=`expr $sum  + $i`
		fi
	done
		if [ $sum -eq $num ]
		then
			echo perfect
		else 
			echo not
		fi
		i=`expr $i + 1`
	done


