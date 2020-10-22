fname='ip.txt'
min=30
hopCount=0
reqdIP=''
while read IP
do
	echo "Counting hops for $IP"
	hopCount=$(traceroute -I $IP | wc -l)
	hopCount=`expr $hopCount \- 1`
	if [ $hopCount -le $min ]
	then
		min=$hopCount
		reqdIP=$IP
	fi
	echo ">> $hopCount"
	echo
done<$fname
echo "-----Minimum Hops: $min for $reqdIP-----"
echo
echo "Opening Firefox..."
firefox http://$reqdIP
