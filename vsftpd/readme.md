# README: Configuración de vsftpd.conf y vsftpd.conf.bak

Este archivo README explica las configuraciones de los archivos `vsftpd.conf` y `vsftpd.conf.bak` que son usados para configurar el servidor **vsftpd** (Very Secure FTP Daemon), un servidor FTP ligero y seguro. 

Aquí se describen las principales configuraciones y diferencias entre ambos archivos.

## 1. Archivo vsftpd.conf

Este archivo contiene una configuración personalizada y avanzada para un servidor FTP en el dominio `sistema.sol`.

### Principales configuraciones:

### 1. Modo de operación del servidor:
- `listen=YES`: Configura el servidor como independiente (standalone) y lo habilita para conexiones IPv4.
- `listen_ipv6=NO`: No habilita soporte para IPv6 en esta configuración.

### 2. Mensajes personalizados:
- `ftpd_banner="--- Welcome to the FTP server of 'sistema.sol' ---"`: Mensaje de bienvenida al conectarse.
- `dirmessage_enable=YES`: Activa mensajes personalizados en directorios (archivos `.message`).

### 3. Permitir usuarios anónimos y configuraciones:
- `anonymous_enable=YES`: Permite acceso anónimo.
- `anon_upload_enable=NO`: No permite a usuarios anónimos subir archivos.
- `anon_other_write_enable=NO`: No permite a usuarios anónimos realizar modificaciones (el acceso es solo de lectura).

### 4. Control de usuarios locales:
- `local_enable=YES`: Permite el acceso a usuarios locales.
- `write_enable=YES`: Permite a los usuarios locales subir y modificar archivos.
- `chroot_local_user=YES`: Enjaula a los usuarios locales en sus directorios personales.
- `chroot_list_enable=YES`: Excluye de la restricción a usuarios listados en `/etc/vsftpd.chroot_list`.

### 5. Restricciones de ancho de banda y conexiones:
- `local_max_rate=5242880`: Límite de velocidad para usuarios locales (5 MB/s).
- `anon_max_rate=2097152`: Límite de velocidad para usuarios anónimos (2 MB/s).
- `max_clients=15`: Máximo de 15 clientes conectados simultáneamente.

### 6. Tiempo de espera:
- `idle_session_timeout=720`: Cierra la sesión tras 720 segundos de inactividad.

### 7. Configuración de seguridad (FTPS):
- `ssl_enable=YES`: Habilita FTPS (FTP con SSL/TLS).
- `force_local_data_ssl=YES` y `force_local_logins_ssl=YES`: Obliga a que todas las conexiones locales sean cifradas.
- `rsa_cert_file` y `rsa_private_key_file`: Especifica los certificados SSL utilizados.


## 2. Archivo vsftpd.conf.bak

Este archivo representa una configuración de ejemplo predeterminada, más restrictiva y menos personalizada.

### Principales diferencias respecto a vsftpd.conf:

#### 1. Acceso anónimo:
- `anonymous_enable=NO`: No permite acceso anónimo.

#### 2. Conexión IPv6:
- `listen_ipv6=YES`: Escucha en direcciones IPv6, compatible con IPv4.

#### 3. Acceso de usuarios locales:
- `local_enable=YES`: Permite acceso local.
- `write_enable=NO` (comentado): No habilita comandos de escritura por defecto.

#### 4. Seguridad:
- `ssl_enable=NO`: No habilita conexiones seguras por defecto.
- Certificados predeterminados (`ssl-cert-snakeoil.pem`) en caso de habilitar SSL.

#### 5. Configuraciones adicionales:
- Configuración genérica y comentarios para funcionalidades como:
  - `anon_upload_enable`: Permitir carga de archivos anónimos.
  - `chroot_local_user`: Enjaular a usuarios locales.
  - `xferlog_enable=YES`: Registro de transferencias.
- Archivos comentados como ejemplo de personalización.

  ## 3. Uso y propósito de los archivos:

- **vsftpd.conf**: Archivo personalizado para un entorno productivo en el servidor de `sistema.sol`.
- **vsftpd.conf.bak**: Archivo de respaldo con configuraciones predeterminadas, útiles para entender las opciones básicas y como referencia para crear una configuración propia.

## 4. Cómo usar estos archivos:

### 1.Configurar `vsftpd.conf`:
1. Copiar el archivo en `/etc/vsftpd.conf`.
2. Ajustar las rutas de los certificados (`rsa_cert_file` y `rsa_private_key_file`) si difieren en tu sistema.
3. Crear o editar `/etc/vsftpd.chroot_list` para definir usuarios excluidos del enjaulamiento.

### 2.Revertir a `vsftpd.conf.bak`:
1. Usar este archivo como plantilla básica para restaurar una configuración mínima.
2. Renombrarlo como `vsftpd.conf` y adaptarlo según sea necesario.

5. Recomendaciones de seguridad:
Usar FTPS siempre que sea posible (ssl_enable=YES).
Limitar el acceso anónimo a solo lectura o deshabilitarlo por completo.
Usar listas de control (chroot_list_enable=YES) para definir excepciones de acceso.

## 6. Comandos útiles:

### Iniciar/Detener/Restaurar el servicio:
```bash
sudo systemctl start vsftpd
sudo systemctl stop vsftpd
sudo systemctl restart vsftpd
```
### Verificar estado del servicio:

```bash
sudo systemctl status vsftpd
```
### Probar la conexión FTP:

```bash
ftp localhost



