invoke-command -computername (get-content machines.txt) -ScriptBlock {$hostname=hostname ;$date=get-Date;"$hostname is $date"}
cmd /c pause