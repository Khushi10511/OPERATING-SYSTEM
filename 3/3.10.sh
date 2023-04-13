#WASS to calculate the electric bill of a customer. you have to input the no. of unit consume and on the rate chart, then display the billing amount.
echo ----------------------------------------- 
echo '\tCalculate Electricity Charge' 
echo ----------------------------------------- 
echo "Enter the Name" 
read name 
echo Enter the Meter number 
read mno 
echo Enter the units consumed
read unit 
if [ $unit -eq 0 ] 
then 
	 charge=40 
 elif [ $unit -gt 0 ] && [ $unit -le 100 ] 
 then 
	  charge=$(expr $unit \* 1) 
  elif [ $unit -gt 100 ] && [ $unit -le 300 ] 
  then 
	   charge=$(expr 100 \* 1 + $unit - 100) 
   elif [ $unit -gt 300 ] && [ $unit -le 500 ] 
   then 
	    charge=$(expr $unit \* 1 + 200 \* 2 + $unit - 300) 
    elif [ $unit -gt 500 ] 
    then 
	     charge=$(expr 1400 + $unit - 400) 
fi 
echo -----------------------------------------  
echo '\tElectricity Billing' 
echo ----------------------------------------- 
echo "Name                  : $name" 
echo "Meter Number          : $mno" 
echo "Unit                  : $unit" 
echo "Charge                : $charge" 
echo ----------------------------------------- 
