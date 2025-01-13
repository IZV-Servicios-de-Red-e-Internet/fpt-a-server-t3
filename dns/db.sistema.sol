; Zona sistema.sol
$ORIGIN sistema.sol.
$TTL	86400
@	IN	SOA	tierra.sistema.sol. root.sistema.sol. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
@	    IN	NS	tierra.sistema.sol.
tierra      IN  A       192.168.56.103
mercurio    IN  A       192.168.56.101
venus       IN  A       192.168.56.102
marte       IN  A       192.168.56.104
ftp         IN  CNAME   tierra