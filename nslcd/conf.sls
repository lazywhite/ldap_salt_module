/etc/nslcd.conf:
    file.managed:
        - source: salt://nslcd/nslcd.tpl
        - user: root
        - group: root
        - mode: 644
        - require:
            - pkg: nss-pam-ldapd
    
