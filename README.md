# Configuración y Uso de FTP en Linux

Este repositorio contiene los pasos y configuraciones necesarios para implementar y gestionar un servidor FTP en un entorno Linux, incluyendo actividades prácticas con clientes de línea de comandos y gráficos. Además, se abordan aspectos de configuración segura del servidor.

## Características

- **Servidor DNS**: Configuración de un servidor DNS maestro con autoridad sobre el dominio `sistema.sol`.
- **Cliente FTP**: Uso de clientes FTP en línea de comandos y gráficos para interactuar con servidores remotos.
- **Servidor FTP**: Instalación y configuración del servidor `vsftpd` para el intercambio de archivos.
- **Seguridad en FTP**: Implementación de conexiones seguras mediante SSL/TLS.
- **Pruebas y Validación**: Actividades prácticas para comprobar la correcta configuración y funcionalidad.

---


## Estructura del repositorio



## Actividades Prácticas

### Configuración Inicial

1. Configura una red local con el rango `192.168.X.0/24`.
2. Establece el servidor DNS en `tierra.sistema.sol` y configura las demás máquinas virtuales para que utilicen este servidor.

### Uso del Cliente FTP

1. Conecta al servidor FTP en `ftp.cica.es` usando el cliente `pftp`.
2. Realiza tareas como descargar archivos, crear directorios y subir contenido.

### Uso de un Cliente Gráfico

1. Instala un cliente gráfico de FTP como Filezilla.
2. Conecta al servidor `ftp.rediris.es` y analiza los mensajes de conexión.

### Instalación del Servidor FTP

1. Instala y configura `vsftpd` en una máquina Linux.
2. Configura usuarios locales y define permisos de acceso.

### Configuración Segura del Servidor FTP

1. Implementa SSL/TLS para conexiones seguras.
2. Prueba las conexiones usando clientes gráficos y verifica la encriptación.

---

### ansible
Incluye playbooks de Ansible para aprovisionar el servidor.

[More Details](./ansible/)

### DNS
Incluye los archivos del DNS.

[Mas detalles](./dns/)

## Pruebas y Validación

1. Realiza conexiones anónimas y autenticadas desde clientes de consola y gráficos.


---

---
