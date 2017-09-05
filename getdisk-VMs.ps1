invoke-command -computername (get-content DCmachines.txt) -ScriptBlock {
$hostname=hostname ;
$disks=Get-wmiObject Win32_logicalDisk;
"$hostname"
Foreach ($disk in $disks)
{
	$letter= $disk.DeviceID
	$size= $disk.Size/1024/1024/1024
	$free= $disk.FreeSpace/1024/1024/1024
	"$letter is size: $size free : $free" 
}
#Get-PSDrive C | select-Object Name,Used,Free
}
cmd /c pause