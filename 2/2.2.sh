echo " Enter time in seconds "
read sec
hour=`expr sec / 3600`
h=`expr sec % 3600`
min=`expr h / 60`
s=`expr h % 60`
echo  " Hours:$hour , Minutes:$min and Seconds:$s "


