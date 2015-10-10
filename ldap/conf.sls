/etc/openldap/ldap.conf:
    file.managed:
        - source: salt://ldap/ldap.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: openldap-clients

/etc/pam.d/password-auth-ac:
    file.managed:
        - source: salt://ldap/password-auth-ac.tpl
        - user: root
        - group: root
        - mode: 644

/etc/pam.d/system-auth-ac:
    file.managed:
        - source: salt://ldap/system-auth-ac.tpl
        - user: root
        - group: root
        - mode: 644

/etc/pam_ldap.conf:
    file.managed:
        - source: salt://ldap/pam_ldap.tpl
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: openldap-clients
