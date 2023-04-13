echo "enter no of numbers" 
read n

count=0
evensum=0
oddsum=0
evennum=0
oddnum=0

while [ $count -lt $n ]
do
 read -p "enter the next number" num
  if [ `expr $num % 2 ` -eq 0 ]
     then
       evensum=`expr $num + $evensum `
             evennum=`expr $evennum + 1 `
       else
          oddsum=`expr $num + $oddsum `
           oddsum=`expr $oddnum + 1 `
   fi
       count=`expr $count + 1 `
done
evenavg=`expr $evensum / $evennum `
echo "the even average is $evenavg"
 oddavg=`expr $oddsum / $oddnum `
  echo "the odd average is $oddavg"

