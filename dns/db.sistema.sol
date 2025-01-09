; Zona sistema.sol
$TTL	86400
@	IN	SOA	dns.sistema.sol. root.sistema.sol. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
@	    IN	NS	dns.sistema.sol.
dns         	IN	A	192.168.56.103
tierra      	IN  A       192.168.56.10
discovery   	IN  CNAME   tierra
www.izv.ies.	IN	A		192.168.56.102
