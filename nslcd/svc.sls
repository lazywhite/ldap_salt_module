nslcd:
    service.running:
        - watch:
            - file: /etc/nslcd.conf
        - require:
            - pkg: nss-pam-ldapd

