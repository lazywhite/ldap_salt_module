TLS_REQCERT never
TLS_CACERT {{ pillar['tls_ca'] }}
TLS_CERT {{ pillar['tls_cert'] }}
TLS_KEY {{ pillar['tls_key'] }}
URI {{ pillar['ldap_uri'] }}
BASE {{ pillar['ldap_base'] }}
