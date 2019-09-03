# PowerShell para administradores
# 1.- Gestión de usuarios y grupos

## Pregunta 1 
Para mostrar las cuentas de usuarios locales utilizaremos:

1. Get-LocalUser
2. New-LocalUser
3. Set-LocalUser
4. Rename-LocalUser

> Respuesta [1]

## Pregunta 2
Para eliminar una cuenta de usuario local con confirmación utilizaremos:

1. Remove-LocalGroup
2. Remove-LocalGroup -Confirm
3. Rename-LocalUser -Confirm
4. Remove-LocalUser -Confirm

> Respuesta [4]

## Pregunta 3
Para desactivar la cuenta del usuario pedro utilizaremos:

1. Enable-LocalUser pedro
2. Remove-LocalUser pedro
3. Disable-LocalUser pedro
4. Remove-LocalGroup pedro

> Respuesta [3]


## Pregunta 4
El siguiente comando: `New-LocalUser arenitas -Password "peque"`

1. Crea un usuario llamado arenitas con contraseña peque.
2. Crea un usuario llamado arenitas sin contraseña.
3. Crea un usuario llamado arenitas con contraseña en blanco.
4. Dará error, porque la contraseña no está encriptada.

> Respuesta [4]


## Pregunta 5
El módulo que contiene los comandos relacionados con las cuentas de usuarios y grupos es:

1. Microsoft.PowerShell.LocalAccounts
2. Microsoft.PowerShell.Management
3. Microsoft.PowerShell.Utility
4. PSReadline

> Respuesta [1]

# 2.- Gestión de carpetas compartidas
## Pregunta 6
Para ver todos los recursos compartidos utilizaremos:

1. Get-SmbShare
2. Get-SmbShare -Special:$true
3. Get-SmbShare -Special:$false
4. Set-SmbShare

> Respuesta: [1]


## Pregunta 7
El comando: `Remove-SmbShare -Name comida -Force`

1. Elimina el recurso compartido llamado comida con confirmación.
2. Elimina el recurso compartido llamado comida sin confirmación.
3. Elimina el recurso compartido llamado comida y la carpeta asociada con confirmación.
4. Elimina el recurso compartido llamado comida y la carpeta asociada sin confirmación.

> Respuesta: [2]


## Pregunta 8:
Supongamos que el usuario arenitas tiene acceso control total sobre el recurso compartido comida, y escribimos:
`Grant-SmbShareAccess -Name comida -AccountName arenitas -AccessRight Read -force`

1. Se añade el permiso de lectura.
2. Se sobreescribe los permisos anteriores y se queda con solo lectura.
3. Se queda con el permiso de control total.
4. Dará error, porque son permisos contradictorios.

> Respuesta: [2]

## Pregunta 9:
Para quitar una cuenta de la columna Permitir de un recurso compartido, utilizaremos:

1. Revoke-SmbShareAccess
2. Block-SmbShareAccess
3. Unblock-SmbShareAccess
4. Ninguno de los anteriores.

> Respuesta: [1]


## Pregunta 10:
Para prohibir el acceso a un recurso compartido, utilizaremos:

1. Revoke-SmbShareAccess
2. Block-SmbShareAccess
3. Unblock-SmbShareAccess
4. Ninguno de los anteriores.En cuanto a la ayuda de PowerShell:

> Respuesta: [3]

# 3.- Gestión de discos.
## Pregunta 11:
El módulo que contiene los comandos relacionados con la gestión de disco es:

1. Storage
2. Microsoft.PowerShell.Management
3. PsReadLine
4. PSDiagnostics

> Respuesta: [1]

## Pregunta 12:
Para mostrar información de los discos activos escribimos:

1. Get-Disk
2. Get-Disk |FT -Autosize
3. Get-Disk |Fl *
4. Get-Disk |Fl Number,Size,PartitionStyle

> Respuesta: [1,2,3,4]

## Pregunta 13:
¿Cuáles de las siguientes afirmaciones sobre Hyper-V son verdaderas?

1. Nos permite crear discos virtuales desde PowerShell.
2. Es incompatible con VirtualBox.
3. Hyper-V es una característica de Windows que tenemos que activar.
4. Hyper-V es el mejor sistema de virtualización.

> Respuesta: [1,2,3]

## Pregunta 14:
El comando `New-VHD -Path c:\disco2.vhdx -SizeBytes 5GB –Dynamic` nos crea:

1. Un disco virtual de tipo fijo, de tamaño de 5GB.
2. Un disco virtual de tipo dinámico, de tamaño máximo de 5GB.
3. Un disco virtual de tipo fijo, de tamaño de 5GB, que crece si es necesario.
4. Un disco virtual de tipo dinámico, de tamaño inicial de 5GB, que crece si es necesario.

> Respuesta: [2]


## Pregunta 15:
Si ejecutamos el comando: `get-disk |fl Number,Size,PartitionStyle` y la salida de la columna de PartitionStyle pone RAW, significa que:

1. El disco no tine tabla de partionamiento creada.
2. El disco tiene un sistema de particionamiento GPT.
3. El disco tiene un sistema de particionamiento MBR.
4. El disco tiene un formato que no es reconocible.


>Respuesta: [1]


## Pregunta 16:
Una vez creado el disco virtual y montado, los comandos para gestionar el disco virtual son idénticos a los de un disco fijo.

1. Sí, si el disco virtual es de tipo fijo.
2. Sí, si el disco virtual es de tipo dinámico.
3. No, son distintos.
4. Sí.

> Respuesta: [4]

# 4.- Gestión de la red.
## Pregunta 17:
Para obtener información de un adaptador llamado "Ethernet", utilizaremos:

1. Get-NetAdapter -Name "Ethernet"|fl
2. Get-NetAdapter -Name "Ethernet"|ft
3. Enable-NetAdapter -Name "Ethernet"
4. Enable-NetAdapter "Ethernet"

> Respuesta: [1,2] 

## Pregunta 18:
Si escribimos: `Gip -InterfaceAlias "Ethernet"` obtendremos:

1. La IP, el Gateway y los DNS.
2. Nos dará error, porque Gip no es un cmdlet válido.
3. Nos dará información de todos Interfaces incluidos el "Ethernet".
4. La IP, el Gateway pero no los DNS.

> Respuesta: [1]

##Pregunta 19
De los siguientes comandos, cuál nos muestra true o false como resultado.

1. Test-Connection 192.168.0.1|FT -autosize
2. Test-Connection 192.168.0.1 -Count 1 -Quiet
3. Test-Connection 192.168.0.1 -Count 1 
4. Test-Connection 192.168.0.1

> Respuesta: [2]

## Pregunta 20
De los siguientes comandos, cuál/es manda 4 paquetes

1. Test-Connection 192.168.0.1|FT -autosize
2. Test-Connection 192.168.0.1 -Count 1 -Quiet
3. Test-Connection 192.168.0.1 -Count 1 
4. Test-Connection 192.168.0.1

> Respuesta: [1,4]

# 5.- Gestión de procesos y servicios
## Pregunta 21
El siguiente código:`Get-Process|sort cpu -Descending |Select-Object -First 10`

1. Nos muestra los 10 procesos ordenados por nombre.
2. Nos muestra los 10 procesos que más consumen CPU.
3. Nos muestra los 10 procesos que menos consumen CPU.
4. Nos muestra todos los procesos ordenados por CPU.

> Respuesta: [2]

## Pregunta 22
El siguiente código:`(Get-Process notepad).ws/1mb ` 

1. Nos dará error porque esa operación no está permitida.
2. Nos muestra la propiedad WS del proceso notepad expresada en bytes.
3. Nos muestra la propiedad WS del proceso notepad expresada en Mbytes.
4. Nos dará error porque no existe la propiedad WS.

> Respuesta: [3]

## Pregunta 23
Para iniciar el proceso notepad escribiremos:

1. Start-Process -FilePath 'c:\windows\notepad.exe’
2. Start-Process  notepad
3. Start-Process -FilePath 'c:\windows\note.exe’
4. Start-Process  note

> Respuesta: [1,2]

## Pregunta 24
Para iniciar la app de Windows Windows Store, escribimos:

1. Start-Process Ms-Windows-Store://
2. Start-Process Ms-Windows-Store
3. Ms-Windows-Store
4. Ms-Windows-Store://

> Respuesta: [1]

## Pregunta 25
El siguiente código:`Get-Service |? {$_.Status -eq "Running"}`

1. Nos muestra todos los servicios.
2. Nos muestra los servicios que se han ejecutado en el último minuto.
3. Nos muestra sólo los servicios que están corriendo.
4. Nos muestra los servicios que no están corriendo.

> Respuesta: [3]

## Pregunta 26
El siguiente código: `Get-Service -RequiredServices -Name spooler`

1. Nos muestra toda la información del servicio Spooler.
2. Nos muestra los sevicios necesarios para iniciar el servicio Spooler.
3. Nos muestra los servicios que depende del servicio Spooler.
4. Nos muestra los servicios que ha abierto el servicio Spooler.

> Respuesta: [2]

## Pregunta 27
Para forzar la detección del servicio de Windows Update, escribimos:

1. Stop-Service -Name wuauserv –Force
2. Stop-Service -Name wuauserv 
3. Stop-Service -Name wuauserv –Confirm=$false
4. Stop-Service -Name wuauserv –kill

> Respuesta: [1]

## Pregunta 28
Con Set-Service podemos modificar:

1. Description
2. DisplayName 
3. Tipo de inicio
4. Status

> Respuesta: [1,2,3,4]

# 6.- Gestión de tareas programadas

## Pregunta 29 
Para mostrar las tareas programadas, utilizaremos:

1. Set-ScheduledTask
2. Get-ScheduledTask
3. New-ScheduledTask
4. Get-ScheduledTask|FL *

> Respuesta [2,4]

## Pregunta 30
En la creación de una tarea, el trigger es:

1. El programa que se va a ejecutar.
2. El momento en el que se va a ejecutar.
3. La descripción de la tarea.
4. La cuenta de usuario que ejecutará con la que se ejcutará el programa.

> Respuesta [2]

## Pregunta 31
La acción de una tarea programada:

1. No se puede modificar.
2. Sí se puede, pero solo si la tarea está desactivada.
3. Sí se puede, pero solo si la tarea está activada.
4. Sí se puede modificar.

> Respuesta [4]

## Pregunta 32
Para eliminar una tarea programada, utilizaremos:

1. Set-ScheduledTask
2. Register-ScheduledTask
3. New-ScheduledTask
4. Unregister-ScheduledTask

> Respuesta [4]

## Pregunta 33
Para lanzar una tarea programada sin esperar al desencadenador, utilizaremos:

1. Set-ScheduledTask
2. Register-ScheduledTask
3. Start-ScheduledTask
4. New-ScheduledTask

> Respuesta [3]

# 7.- Gestión de impresoras

## Pregunta 34 
Para mostrar las impresoras instaladas, utilizaremos:

1. Get-Printer
2. Get-PrinterDriver
3. Get-PrinterPort
4. Set-printer

> Respuesta [1]

## Pregunta 35
Para agregar una impresora debemos previamente:

1. Añadir el controlador de impresión al almacen de contoladores.
2. Instalar el controlador de impresión.
3. Utilizar y/o Añadir un puerto.
4. No es necesario ningún paso previo.

> Respuesta [1,2,3,]

## Pregunta 36
Para modificar/actualizar una propiedad, utilizaremos:

1. Get-Printer
2. Get-PrinterDriver
3. Get-PrinterPort
4. Set-printer

> Respuesta [4]

## Pregunta 37
Si utilizamos el comando: `Remove-Printer -Name "Mi impresora"`, eliminamos:

1. Sólo la impresora.
2. La impresora y el controlador asociado.
3. La impresora y el puerto asocido.
4. La impresora, el controlador asociado y el puerto asociado.

> Respuesta [1]

# 8.- Gestión de eventos

## Pregunta 38 
Para mostrar los registros de eventos, utilizaremos:

1. Get-WinEvent
2. Get-EventLog
3. Get-Log
4. Set-EventLog

> Respuesta [1,2]

## Pregunta 39
Get-EventLog y Get-WinEvent:

1. Son dos cmdlets para obtener los registros de eventos.
2. Get-Eventlog sólo muestra los registros princiales.
3. Get-WinEvent sólo muestra los registros principales.
4. Get-WinEvent muestra los registros principales y los generados con la tecnología Windows Event Log.

> Respuesta [1,4]

## Pregunta 40
El comando: `Get-EventLog -LogName System -Newest 5 –EntryType  Error`

1. Nos muestra los 5 últimos registros del sistema que dan error.
2. Nos muestra los 5 últimos registros del sistema que no dan error.
3. Nos muestra los 5 últimos registros del sistema, incluidos los que dan error.
4. Dará error de sintaxis.

> Respuesta [1]

## Pregunta 41
El comando `Get-WinEvent -FilterHashtable @{LogName='system'; Level=2}` :


1. Nos muestra los últimos registros del sistema que dan error.
2. Nos muestra los últimos registros del sistema que son críticos.
3. Nos muestra los últimos registros del sistema que son warning.
4. Dará error de sintaxis.

> Respuesta [1]

# 9.- Gestión de WMI

## Pregunta 42 
Para extraer información de las clases de WMI/CIM, utilizaremos:

1. Get-CimInstance
2. Get-Win32
3. Get-WmiObject
4. Get-Win32_Wmi

> Respuesta [1,3]

## Pregunta 43
El comando `Get-WmiObject -Class Win32_Share`:

1. Nos muestra sólo las carpetas compartidas.
2. Nos muestra todos los recursos compartidos.
3. Nos muestra las carpetas compartidas ocultas.
4. Nos muestra los recursos compartidos ocultos.

> Respuesta [2]

## Pregunta 44
Para obtener información del sistema operativo escribimos:

1. Get-CimInstance -Class win32_Bios
2. Get-CimInstance -Class win32_computerSystem 
3. Get-WmiObject -Class win32_ComputerSystem 
4. Get-WmiObject -Class Win32_OperatingSystem

> Respuesta [1,4]
