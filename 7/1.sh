#Q1i. WASS to input two array iof size m and n, then perform the following operations like, Press-1 for find out the union operation of that inputted array
#and press-2 for find out the intersection operation of that two inputted array using switch case

echo "Enter the size of the first array: "
read m

# Input the first array
echo "Enter the elements of the first array: "
for (( i=0; i<$m; i++ ))
do
	  read a[$i]
  done

  echo "Enter the size of the second array: "
  read n

  # Input the second array
  echo "Enter the elements of the second array: "
  for (( i=0; i<$n; i++ ))
  do
	    read b[$i]
    done

    # Menu to select operation
    echo "Enter 1 to find the union of the two arrays"
    echo "Enter 2 to find the intersection of the two arrays"
    read choice

    case $choice in
    1)
	    echo "The union of arrays is:"
    # Find the union of the two arrays
    for (( i=0; i<$m; i++ ))
   do
   flag=0
     for (( j=0; j<$n; j++ ))
       do
      if [ ${a[$i]} -eq ${b[$j]} ]
       then
       flag=1
       break
    fi
    done
   if [ $flag -eq 0 ]
       then
       echo ${a[$i]}
       fi
   done
     for (( j=0; j<$n; j++ ))
   do
    echo ${b[$j]}
    done
   ;;
   2)
    echo "The intersection is:"	   
  # Find the intersection of the two arrays
   for (( i=0; i<$m; i++ ))
    do
   for (( j=0; j<$n; j++ ))
   do
   if [ ${a[$i]} -eq ${b[$j]} ]
   then
   echo ${a[$i]}
    fi
   done
  done
 ;;
  *)
  echo "Invalid choice"
    ;;
    esac

