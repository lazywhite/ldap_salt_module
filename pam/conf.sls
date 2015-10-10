/etc/pam.d/password-auth-ac:
    file.managed:
        - source: salt://pam/password-auth-ac.tpl
        - user: root
        - group: root
        - mode: 644
        - template: jinja

/etc/pam.d/system-auth-ac:
    file.managed:
        - source: salt://pam/system-auth-ac.tpl
        - user: root
        - group: root
        - mode: 644
        - template: jinja

/etc/pam_ldap.conf:
    file.managed:
        - source: salt://pam/pam_ldap.tpl
        - user: root
        - group: root
        - mode: 644
        - template: jinja
        - require:
            - pkg: pam_ldap
