#Creación de usuarios de forma masiva
$usuarios= Import-Csv -Path C:\material\usuarios.csv
foreach ($i in $usuarios){

$clave= ConvertTo-SecureString $i.contra -AsPlainText -Force
New-LocalUser $i.nombre -Password $clave -AccountNeverExpires -PasswordNeverExpires
Add-LocalGroupMember -Group usuarios -Member $i.nombre
}