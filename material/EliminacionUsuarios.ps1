#Eliminación de usuarios de forma masiva
$usuarios= Import-Csv -Path C:\material\usuarios.csv
foreach ($i in $usuarios){
Remove-LocalUser $i.nombre
}