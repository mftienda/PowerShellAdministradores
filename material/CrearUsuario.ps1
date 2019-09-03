#Creación de un usuario
Clear
$usuario=Read-Host "Introduce nombre de usuario"
$contra=Read-Host "Introduce contraseña" -AsSecureString
New-LocalUser $usuario -Password $contra
Add-LocalGroupMember usuarios -Member $usuario