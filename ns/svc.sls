nslcd:
    service.running:
        - watch:
            - file: /etc/nsswitch.conf
        - require:
            - pkg: nss-pam-ldapd

nscd:
    service.running:
        - watch:
            - file: /etc/nscd.conf
        - require:
            - pkg: nscd
