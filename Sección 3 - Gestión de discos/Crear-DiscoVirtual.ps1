#Creación automática de un disco virtual
$Disco=Read-Host "Introduce el nombre del disco (Path)"
[int]$temp = Read-Host “Tamaño del disco en GBytes”
[double]$tamano = $temp * 1000000000
New-VHD -Path $Disco -SizeBytes $tamano –Dynamic
Mount-VHD -Path $Disco -Passthru|
Initialize-Disk -PassThru|
New-Partition -AssignDriveLetter -UseMaximumSize|
Format-Volume -FileSystem NTFS -Confirm:$false
