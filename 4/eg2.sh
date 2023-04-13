read -p "Enter three marks" a b c 
total=`expr $a + $b + $c`
per=`expr($total/3)`
case $per in
	 100)echo "The grade is O";;
	9[0-9])echo "The grade is O";;
	 8[0-9])echo "The grade is E";;
	 7[0-9])echo "The grade is A";;
	  6[0-9])echo "The grade is B";;
  esac
