#WASS to input 2 times in hour, minute and seconds, displaying the sum of that two numbers.
echo "Enter first time in hour , minutes and seconds "
read h1
read m1
read s1
echo "Enter second time in hour , minutes and seconds "
read h2
read m2
read s2
h3=`expr h1 + h2`
m3=`expr m1 + m2`
s3=`expr s1 + s2`
echo "Hours:$h3 Minutes:$m3 and Seconds:$s3"

