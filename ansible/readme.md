# Configuración Automática de Servidores con Ansible

Este proyecto utiliza Ansible para automatizar la configuración de un servidor DNS, un servidor FTP y la creación de usuarios y certificados en un entorno Debian. A continuación, se describe cómo se estructuró el archivo Ansible y sus principales tareas.

---

## Resumen

El archivo Ansible está diseñado para cumplir con los siguientes objetivos:

1. Configurar un servidor DNS (`Bind9`) con autoridad sobre el dominio `sistema.sol`.
2. Crear usuarios con directorios y archivos predeterminados.
3. Configurar e instalar un servidor FTP seguro (`vsftpd`), incluyendo conexiones anónimas y autenticadas.
4. Generar claves y certificados SSL para asegurar las comunicaciones.
5. Reiniciar y validar los servicios configurados.

---

## Estructura de Tareas

### Configuración del Servidor DNS

1. **Actualizar lista de paquetes**:
   Se asegura de que la lista de paquetes esté actualizada antes de instalar `Bind9`.
   ```yaml
   - name: Actualizar lista de paquetes
     ansible.builtin.package:
       update_cache: true
2. **Instalación de Bind9**:
   Se instalan los paquetes necesarios para el servidio DNS.
   ```yaml
   - name: Instalar Bind9
    ansible.builtin.package:
      name:
      - bind9
      - bind9-utils
      - bind9-doc
  3. **Copia de Archivos de Cofiguración**:
     Se copian archivos personalizados para configurar las zonas DNS y los archivos de opciones.
     ```yaml
      - name: Configurar Bind9 conf
        ansible.builtin.copy:
          src: ../dns/named.conf.local
          dest: /etc/bind

  4. **Validación y Reinicio**:
     Se verifica la configuración y ser reinicia el servicio.
     ```yaml
       - name: Comprobar que funciona
         command: named-checkconf
### Configuración de Ususuarios y Directorios
  1. **Creación de Usuarios**:
     Se crean usuarios con sus respectivos directorios y contraseñas cifradas.
     ```yaml
       - name: Crear usuario "luis"
        ansible.builtin.user:
          name: luis
          shell: /bin/bash
          create_home: yes
          password: "<hash>"
  2. **Copia de Archivos**:
     Se copian los archivos de usuario a sus respectivos directorios.
     ```yaml
       - name: Copiar los archivos "luis1.txt" y "luis2.txt"
        ansible.builtin.copy:
          src: ../usuarios/luis/
          dest: /home/luis
### Configuración del Servidor FTP Seguro
  1. **Instalación de vsftpd**:
     Se instala el paquete vsftpd para el servicio FTP.
     ```yaml
       - name: Instalar vsftpd
        ansible.builtin.package:
          name:
          - vsftpd

  2. **Archivo de Configuración**:
    Se copia el archivo personalizado vsftpd.conf con las configuraciones necesarias.
     ```yaml
       - name: Copiar archivo vsftpd.conf
        ansible.builtin.copy:
          src: ../vsftpd/vsftpd.conf
          dest: /etc/
  3. **Certificados SSL**:
     Se generan claves y certificados autofimados para asegurar las conexiones.
     ```
       -name: Generar clave privada
       command:
           cmd: openssl genrsa -out /etc/ssl/private/sri.key 2048
  4. **Configuración de Usuarios No Enjaulados**:
     Se define una lista de susarios que no estarán restringidos a su directorio home.
     ```yaml
       -name: Lista de usuarios no enjaulados
         ansible.builtin.copy:
           src: ../vsftpd/vsftpd.chroot_list
           dest: /etc/
  5. **Reinicio del Servicio**:
     Se reinicia el servicio FTP para aplicar los cambios.
     ```yaml
       - name: Reiniciar servicio
          systemd:
            name: vsftpd
            enabled: true
            state: restarted
   
     


       
