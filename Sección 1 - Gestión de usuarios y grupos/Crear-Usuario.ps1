Clear
$usuario=Read-Host "Introduce nombre de usuario"
$contra=Read-Host "Introduce contraseña" -Assecurestring
New-LocalUser $usuario -Password $contra
Add-LocalGroupMember usuarios -Member $usuario