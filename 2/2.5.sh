#input a no and reverse that inputted no
echo " Enter a no. "
read n
n1=`expr $n / 10`
r =`expr $n \* 100`
n2=`expr $r / 10`
n3=`expr $n % 10`
rev=`expr $n3 \* 100 + $n2 \* 10 + $n1`
echo " Reversed no : $rev "


