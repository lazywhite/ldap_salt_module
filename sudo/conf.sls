/etc/sudo-ldap.conf:
    file.managed:
        - source: salt://ldap/sudo-ldap.tpl
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: openldap-clients
