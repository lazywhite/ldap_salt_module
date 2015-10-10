#
# LDAP Defaults
#

# See ldap.conf(5) for details
# This file should be world readable but not world writable.

#BASE	dc=example,dc=com
#URI	ldap://ldap.example.com ldap://ldap-master.example.com:666

#SIZELIMIT	12
#TIMELIMIT	15
#DEREF		never
TLS_REQCERT no
TLS_CACERTDIR /etc/openldap/cacerts
URI ldap://ldap.local.com
BASE dc=local,dc=com
