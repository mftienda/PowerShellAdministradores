#Eliminación de usuarios de forma masiva
$usuarios = Import-Csv -Path D:\usuarios.csv
foreach ($i in $usuarios)
        {
        Remove-LocalUser $i.nombre
        }