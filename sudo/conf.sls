/etc/sudo-ldap.conf:
    file.managed:
        - source: salt://sudo/sudo-ldap.tpl
        - user: root
        - group: root
        - mode: 644
        - template: jinja
        - require:
            - pkg: openldap-clients
