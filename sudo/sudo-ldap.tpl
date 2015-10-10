ssl on
tls_cacertfile {{ pillar['tls_ca'] }}
tls_checkpeer no
uri {{ pillar['ldap_uri'] }}
sudoers_base  {{ pillar['sudoer_base'] }}
sudoers_debug 0
