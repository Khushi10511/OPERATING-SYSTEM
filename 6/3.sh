#Q3. WASS to print the array element by initializing the array and using all types of display method.
a=(1 2 3 4 5 )
for((i=0;i<5;i++))
do
	        echo ${a[$i]}
	done
	for((i=0;i<5;i++))
do
		  echo ${a[@]}
			
  done
for((i=0;i<5;i++))
do
        echo ${a[*]}							
done							      

