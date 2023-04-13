echo " Enter 1st no "
read a
echo " Enter 2nd no "
read b
echo " Enter 3rd no "
read c
temp=$b;
$b=$a;
$a=$c;
$c=$temp;
echo "a:$a,b:$b,c:$c"

