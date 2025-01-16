Preguntas:
Examina la ventana de los mensajes intercambiados y contesta:
a. ¿Qué modo ha usado el cliente (activo o pasivo) al descargar el listado de archivos del
servidor?

Filezilla por defecto utiliza el modo pasivo, lo que facilita el acceso a través de cortafuegos y routers NAT, ya que el cliente inicia la conexión tanto para los comandos como para la transferencia de datos, lo que generalmente funciona mejor en entornos restringidos.

b. ¿Cuál es la IP del servidor de ftp.rediris.es?

Como podemos ver en al imagen la 130.206.13.2

c. ¿De los 6 dígitos que aparecen en el mensaje 227 Entering Passive Mode (…) qué significan
los 2 últimos números?

227 Entering Passive Mode (192,0,2,1,104,31)
Los dos últimos números son los dos bytes que comprenden el puerto remoto para la conexión de datos pasiva.
