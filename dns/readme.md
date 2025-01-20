## README: Configuración de un Servidor DNS y Prueba de Resolución

Este documento explica los pasos para configurar un servidor DNS maestro en un entorno basado en Debian. Se incluye la configuración de zonas directas e inversas, así como la validación de su funcionamiento.

###Requisitos Previos
1.**Red configurada en el rango 192.168.X.0/24.**
2.**Acceso a una máquina virtual Debian llamada tierra para actuar como servidor DNS.**
3.**Las otras máquinas virtuales (mercurio, venus, marte) configuradas con sus respectivas direcciones IP y nombres de dominio.**

###Pasos para Configurar el Sevidor DNS
1.**Preparar el Sistema**
Instalar el paquete bind9 en Debian:
  ```bash
sudo apt update
sudo apt install bind9

```

2.**Archivos de Configuración**
Crear el archivo de configuración de la zona directa (/var/lib/bind/db.sistema.sol):
```bash
$ORIGIN sistema.sol.
$TTL    86400
@   IN  SOA  tierra.sistema.sol. root.sistema.sol. (
             1     ; Serial
         604800     ; Refresh
          86400     ; Retry
        2419200     ; Expire
          86400 )   ; Negative Cache TTL
;
@       IN  NS    tierra.sistema.sol.
tierra  IN  A     192.168.56.103
mercurio IN  A    192.168.56.101
venus   IN  A     192.168.56.102
marte   IN  A     192.168.56.104
ftp     IN  CNAME tierra
```
Crear el archivo de configuración de la zona inversa (/var/lib/bind/db.192.168.56):
```bash
$ORIGIN 56.168.192.in-addr.arpa.
$TTL    86400
@   IN  SOA  tierra.sistema.sol. root.sistema.sol. (
             1     ; Serial
         604800     ; Refresh
          86400     ; Retry
        2419200     ; Expire
          86400 )   ; Negative Cache TTL
;
@       IN  NS    tierra.sistema.sol.
101     IN  PTR   mercurio.sistema.sol.
102     IN  PTR   venus.sistema.sol.
103     IN  PTR   tierra.sistema.sol.
104     IN  PTR   marte.sistema.sol.
```
3.**Actualizar el Archivo de Configuración Principal**
Modificar /etc/bind/named.conf.local para incluir las zonas:
```bash
zone "sistema.sol" {
    type master;
    file "/var/lib/bind/db.sistema.sol";
};

zone "56.168.192.in-addr.arpa" {
    type master;
    file "/var/lib/bind/db.192.168.56";
};
```
4.**Configuración Adicional.
Editar /etc/bind/named.conf.options para agregar un reenviador:
```bash
options {
    directory "/var/cache/bind";
    forwarders {
        1.1.1.1;
    };
    dnssec-validation no;
    listen-on-v6 { any; };
};
```
5.**Reinciar el Servicio DNS**
Verificar y reiniciar el servicio:
```bash
sudo named-checkconf
sudo named-checkzone sistema.sol /var/lib/bind/db.sistema.sol
sudo named-checkzone 56.168.192.in-addr.arpa /var/lib/bind/db.192.168.56
sudo systemctl restart bind9
```
###Prueba del Servidor DNS
1. **En las máquinas clientes, configurar /etc/resolv.conf para usar tierra como servidor DNS:**
   ```bash
   nameserver 192.168.56.103
    search sistema.sol

2.**Probar la resolución directa**: 
```bash
dig @192.168.56.103 tierra.sistema.sol
```
3.**Probar la resolución inversa:
```bash
dig -x 192.168.56.103 @192.168.56.103

```



