/etc/openldap/ldap.conf:
    file.managed:
        - source: salt://ldap/ldap.tpl
        - user: 0
        - group: 0
        - mode: 644
        - template: jinja
        - require:
            - pkg: openldap-clients

