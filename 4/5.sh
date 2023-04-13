read -p "Enter character from the keyboard" a
case $a in
	        [A-Z]) echo "Upper case letters";;
		        [a-z]) echo "Lower case letters";;

			        *) case $a in
					        [0-9]) echo "This is a digit";;
						        *) echo "Special characters";;
						esac
				esac
