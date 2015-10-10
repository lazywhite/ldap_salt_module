/etc/openldap/cacerts:
    file.directory:
        - user: 0
        - group: 0
        - mode: 755
        - makedirs: True

/etc/openldap/cacerts/cacert.pem:
    file.managed:
        - source: salt://ldap/certs/cacert.pem
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts
        
/etc/openldap/cacerts/client.cert:
    file.managed:
        - source: salt://ldap/certs/client.cert
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts

/etc/openldap/cacerts/client.key:
    file.managed:
        - source: salt://ldap/certs/client.key
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts
