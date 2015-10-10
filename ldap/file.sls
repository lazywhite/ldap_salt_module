/etc/openldap/cacerts:
    file.directory:
        - user: 0
        - group: 0
        - mode: 755
        - makedirs: True

/etc/openldap/cacerts/cacert.pem:
    file.managed:
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts
        
/etc/openldap/cacerts/client.cert:
    file.managed:
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts

/etc/openldap/cacerts/client.key:
    file.managed:
        - user: 0
        - group: 0
        - mode: 755
        - require:
            - file: /etc/openldap/cacerts
