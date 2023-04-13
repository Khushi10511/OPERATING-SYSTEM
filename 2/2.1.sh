echo "Enter  a number "
read a
echo "Enter the 2nd number "
read b
c=`expr $a + $b`
echo "The sum is $c "
s=`expr $a - $b`
echo "The difference is $s "
m=`expr $a \* $b`
echo "The multiplication  is $m "
d=`expr $a / $b`
echo "The division is $d "
q=`expr $a % $b`
echo "The modulus is $q "
