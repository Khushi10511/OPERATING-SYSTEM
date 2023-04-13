#wass to enter a no between 1 to 10 and diasplay in character form
read -p "Enter a no. between 1 to 10 " n
case $n in
	1) echo "One";;
	2) echo "Two";;
	3) echo "Three";;
	4) echo "Four";;
	5) echo "Five";;
	6) echo "Six";;
	7) echo "Seven";;
	8) echo "Eight";;
	9) echo "Nine";;
	10) echo "Ten";;
	*)echo "Invalid input";;
esac
