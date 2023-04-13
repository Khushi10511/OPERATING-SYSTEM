#leap year or not 
echo "Enter the year"
read a
if test `expr $a % 4` -eq 0 -a `expr $a % 100` -ne 0 -o `expr $a % 400` -eq 0
then
	                echo "$a is a leap year"
			        else
					                        echo "$a is not a leap year"
fi
