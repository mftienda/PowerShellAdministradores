#Conexión con los servidores
# Cabecera
Clear-Host
Write-Host " ----- Conectividad -----"
#Importamos los datos
$datos= Import-Csv -Path C:\material\servidores.csv
#Recorremos los datos
    foreach ($i in $datos) {
    $respuesta=Test-Connection $i.ip -Count 1 -quiet
    if ($respuesta -eq "true") {
        Write-Host "$i Conexión establecida"
        }else {Write-Host "$i Error de conexión"}
    }

