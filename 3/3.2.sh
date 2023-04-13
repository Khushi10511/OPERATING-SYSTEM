#check whether a no is positive or negative 
echo " Enter a number "
read a
if [ $a -gt 0 ]
then
	                echo " positive "
		elif [ $a -eq 0 ]
		then
			echo " Zero "
		else
					                        echo " negative "
fi
