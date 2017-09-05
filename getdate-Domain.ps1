invoke-command -computername (get-content Domains.txt) -ScriptBlock {$hostname=hostname ;$date=get-Date;"$hostname is $date"}
cmd /c pause