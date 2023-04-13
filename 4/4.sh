  read -p "Enter a number of your choice" x
  case $x in
	          [0-9]) echo "This is a single digit number";;
		          [0-9:wq][0-9]) echo "This is a double digit number";;
			          [0-9][0-9][0-9]) echo "This is a triple digit number";;
				          *) echo "The number is greater than three digits";;
				  esac
