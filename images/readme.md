Esta carpeta es para tomar capturas y luego pasarlas a la documentación dicha información.

Llamar las fotos por orden: 1 , 2 ...

También se resuelven preguntas para el vsftpd


# Configuración de vsftpd

## Imágenes y pasos

### Paso 1
![Paso 1](./vstfpdinfo/1.png)
-  Configuración inicial en FileZilla, ingresando el servidor, nombre de usuario y puerto.

---

### Paso 2
![Paso 2](./vstfpdinfo/2.png)
-  Confirmación del certificado del servidor, verificando la autenticidad y aceptándolo.

---

### Paso 3
![Paso 3](./vstfpdinfo/3.png)
-  Transferencia exitosa de un archivo desde el servidor remoto al cliente local.

---

### Paso 4
![Paso 4](./vstfpdinfo/4.png)
-  Conexión al servidor FTP con credenciales específicas.

---

### Paso 5
![Paso 5](./vstfpdinfo/5.png)
-  Uso de la terminal para conectarse al servidor FTP como usuario `luis` y listar los archivos disponibles.

---

### Paso 6
![Paso 6](./vstfpdinfo/6.png)
-  Conexión al servidor FTP como usuario `maria`, navegando entre directorios y listando carpetas.

---

### Paso 7
![Paso 7](./vstfpdinfo/7.png)
-  Conexión al servidor FTP en modo anónimo, mostrando acceso limitado a los directorios públicos.

# Uso de Cliente Gráfico para FTP
### Paso 1: Abrir FileZilla
![Paso 1](./gráfico/1.png)
-  Comando para instalar FileZilla en sistemas basados en Debian/Ubuntu. Usa el comando `sudo apt install filezilla`.

---

### Paso 2: Interfaz inicial de FileZilla
![Paso 2](./gráfico/2.png)
-  Interfaz inicial de FileZilla al abrir el programa. Aquí se pueden configurar los parámetros para conectar a un servidor FTP.

---

### Paso 3: Configuración de un nuevo sitio FTP
![Paso 3](./gráfico/3.png)
-  Creación de un nuevo sitio FTP en FileZilla, configurando el host (`ftp.rediris.es`), tipo de cifrado y acceso anónimo.

---

### Paso 4: Advertencia sobre conexión insegura
![Paso 4](./gráfico/4.png)
-  Al conectar al servidor, FileZilla muestra una advertencia sobre el uso de FTP sin cifrado (inseguro). Puedes continuar aceptando la conexión.

---

### Paso 5: Estado de la conexión al servidor
![Paso 5](./gráfico/5.png)
-  Verificación del estado de la conexión al servidor FTP (`ftp.rediris.es`), mostrando que se ha conectado exitosamente.

---

### Paso 6: Transferencia de archivos desde el cliente
![Paso 6](./gráfico/6.png)
-  Transferencia de un archivo (`welcome.msg`) desde el servidor FTP al cliente local.

---

### Paso 7: Exploración de los archivos en el cliente
![Paso 7](./gráfico/7.png)
-  Archivo transferido (`welcome.msg`) mostrado en el sistema de archivos local y abierto en un editor de texto.

---

### Paso 8: Navegación en los directorios del cliente y servidor
![Paso 8](./gráfico/8.png)
-  Vista comparativa de los directorios locales y remotos en FileZilla, destacando la transferencia completada.

---

### Paso 9: Servicios reiniciados en el sistema
![Paso 9](./gráfico/9.png)
-  Configuración del sistema mostrando los servicios a reiniciar tras una instalación o actualización.

---

### Paso 10: Resultado final
![Paso 10](./gráfico/10.png)
-  Proceso finalizado con éxito, mostrando que FileZilla está configurado y listo para gestionar conexiones FTP.

---
