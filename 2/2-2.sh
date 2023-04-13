echo "Enter time in seconds "
read s
sec='expr $s \% 60'
echo " Equivalent time is $sec seconds"
m='expr $s \/ 60'
min='expr $m \% 60'
h='expr $m \/ 60'
hour='expr $h \/ 60'
echo " Equivalent time is $hour hours , $min minutes and $sec seconds"
