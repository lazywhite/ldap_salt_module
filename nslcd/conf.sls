/etc/nslcd.conf:
    file.managed:
        - source: salt://nslcd/nslcd.tpl
        - user: root
        - group: root
        - mode: 644
        - template: jinja
        - require:
            - pkg: nss-pam-ldapd
    
