echo  "Enter two no's"
read a 
read b
echo "Enter a arithematic operator" 
read o
case $o in
	+)sum=`expr $a + $b`
	       	echo " Sum is $sum ";;
	-)diff=`expr $a - $b`
	       	echo " Difference is $diff ";;
	\*) mul=`expr $a \* $b`
		echo " Multiplication is $mul ";;
	/)div=`expr $a / $b`
	       	echo " Division is $div ";;
	%)mod=`expr $a % $b`
		echo "Modulus is $mod ";;
	*)echo"Invalid input";;
esac	
