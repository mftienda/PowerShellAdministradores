# Configuración de IP
# Definición de funciones
Function Get-Menu{
Clear-Host
Write-Host "Configuración IP"
Write-host "1.- IP-Fija"
Write-Host "2.- IP-DHCP"
Write-Host "3.- Salir"
}
Function Get-Adaptador {
Write-Host "Configuración de la IP"
Get-NetAdapter|ft -AutoSize
$script:interfaz = Read-Host "Introduzca la interfaz (IfIndex)"
$script:nombre = Read-Host "Introduzca el nombre (name)"
#Borramos datos
Remove-NetIPAddress -InterfaceIndex $interfaz -Confirm:$false
Remove-NetRoute -InterfaceIndex $interfaz -Confirm:$false
}
Function Ip-Fija {
Get-Adaptador
#Creamos la nueva IP
$ip = Read-host "Introduzca IP"
$mascara = Read-Host "Introduca la máscar (nºs de unos)"
$gateway = Read-Host "Introduzca el gateway"
$dns1 = Read-host "Introduzca el primer DNS"
$dns2 = Read-host "Introduzca el segundo DNS"
New-NetIPAddress -InterfaceIndex $interfaz $ip -PrefixLength $mascara -DefaultGateway $gateway
Set-DnsClientServerAddress -InterfaceIndex $interfaz -ServerAddresses ("$dns1","$dns2")
Restart-NetAdapter -Name $nombre
}
Function IP-Dhcp {
Get-Adaptador
#Establecemos IP por Dhcp
Set-NetIPInterface -InterfaceIndex $interfaz -Dhcp enabled
Set-DnsClientServerAddress -InterfaceIndex $interfaz -ResetServerAddresses
#Restablecer el interfaz
Restart-NetAdapter -Name $nombre
}
#Inicio
do{
Get-Menu
$opcion = Read-Host "Elija una opción"
switch ($opcion){
'1'{Ip-Fija}
'2'{IP-Dhcp}
'3'{exit}
Default {Write-Host "Opción incorrecta"}
}
$intro = Read-Host "Pulse intro para continuar"
}while ($true)