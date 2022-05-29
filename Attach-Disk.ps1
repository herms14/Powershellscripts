Get-Disk | where PartitionStyle -eq 'raw' | Initialize-Disk -PartitionStyle MBR
New-Partition -DiskNumber 2 -Size 262141MB -AssignDriveLetter
Format-Volume -DriveLetter F -FileSystem NTFS -NewFileSystemLabel "Data Disk"
