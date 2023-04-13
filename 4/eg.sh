read -p " Enter a no " n
r=`expr $n % 2 `
case $r in
	1) echo "$n is odd ";;
	*) echo "$n is even";;
esac
