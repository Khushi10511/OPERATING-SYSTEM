#enter a character and check vowel or consonant
read -p "Enter a character from the keyboard" l
case $l in
	        a) echo "This is a vowel";;
		        e) echo "This ia a vowel";;
			        i) echo "This is a vowel";;
				        o) echo "This is a vowel";;
					        u) echo "This is a vowel";;
						        *) echo "This is a consonant";;
						esac
