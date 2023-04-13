echo "Enter a number:"
read n

echo "Enter a year:"
read yr

i=$yr


while [ $i -le `expr $yr + $n` ]
do
	        if [ `expr $i % 4` -eq 0 ]
			        then if [ `expr $i % 100` -eq 0 ]
					                then

								                        if [ `expr $i % 400` -eq 0 ]
												                                then echo "Leap Year"
																	                                        else echo "Not a Leap Year"
																							                                                fi

																													                                             else
																																			                                                       echo "A leap year"
																																									                                                 fi
																																															                                   else
																																																				                                        echo "Not a leap year"
																																																									        fi
																																																										        i=`expr $i + 1`
																																																										done
