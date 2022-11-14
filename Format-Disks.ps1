$offlineDisks = Get-disk | where OperationalStatus -eq "Offline"
$offlineDisks | Initialize-Disk -PartitionStyle MBR -PassThru 
$offlineDisks | New-Partition -UseMaximumSize -AssignDriveLetter -ErrorAction SilentlyContinue | Format-Volume -FileSystem NTFS -Confirm:$false -ErrorAction SilentlyContinue
