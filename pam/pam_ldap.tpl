# The distinguished name of the search base.
base dc=local,dc=com

uri {{ pillar['ldap_uri'] }}
# The LDAP version to use (defaults to 3
# if supported by client library)
ldap_version 3

# The distinguished name to bind to the server with.
# Optional: default is to bind anonymously.
#binddn cn=proxyuser,dc=example,dc=com

# The credentials to bind with. 
# Optional: default is no credential.
#bindpw secret

# Search timelimit
#timelimit 30

# Bind/connect timelimit
#bind_timelimit 30

# Reconnect policy: hard (default) will retry connecting to
# the software with exponential backoff, soft will fail
# immediately.
#bind_policy hard

# Idle timelimit; client will close connections
# (nss_ldap only) if the server has not been contacted
# for the number of seconds specified below.
#idle_timelimit 3600

pam_check_host_attr no
pam_password clear
ssl on
tls_checkpeer no
tls_cacertfile {{ pillar['tls_ca'] }}
tls_cert {{ pillar['tls_cert'] }}
tls_key  {{ pillar['tls_key'] }}
