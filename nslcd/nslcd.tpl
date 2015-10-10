# This is the configuration file for the LDAP nameservice
# switch library's nslcd daemon. It configures the mapping
# between NSS names (see /etc/nsswitch.conf) and LDAP
# information in the directory.
# See the manual page nslcd.conf(5) for more information.


# The LDAP version to use (defaults to 3
# if supported by client library)
#ldap_version 3


# The distinguished name to bind to the server with.
# Optional: default is to bind anonymously.
#binddn cn=manager,dc=local,dc=com

# The credentials to bind with.
# Optional: default is no credentials.
# Note that if you set a bindpw you should check the permissions of this file.
#bindpw  e01ENX1VcHlvQlFvQUdBZ

# The distinguished name to perform password modifications by root by.
#rootpwmoddn cn=admin,dc=example,dc=com

# The default search scope.
#scope sub
#scope one
#scope base

# Customize certain database lookups.
base   group  ou=Groups,dc=local,dc=com
base   passwd ou=People,dc=local,dc=com
base   shadow ou=People,dc=local,dc=com
#scope  group  onelevel
#scope  hosts  sub

# Bind/connect timelimit.
#bind_timelimit 30

# Search timelimit.
timelimit 30

# Idle timelimit. nslcd will close connections if the
# server has not been contacted for the number of seconds.
#idle_timelimit 3600

uid nslcd
gid ldap
uri {{ pillar['ldap_uri'] }}
base {{ pillar['ldap_base'] }}
tls_reqcert never
ssl on
tls_cacertfile {{ pillar['tls_ca'] }}
tls_cert {{ pillar['tls_cert'] }}
tls_key  {{ pillar['tls_key'] }}
