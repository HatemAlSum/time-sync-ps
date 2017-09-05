hostname
'waiting for Three minutes :-('
sleep 180 
w32tm /config /syncfromflags:DOMHIER /update
w32tm /resync /rediscover
w32tm /resync /force
net stop w32time 
net start w32time
$hostname=hostname
$date=get-Date
"$hostname is $date"