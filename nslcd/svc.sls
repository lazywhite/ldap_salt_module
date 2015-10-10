nslcd:
    service.running:
        - enable: True
        - watch:
            - file: /etc/nslcd.conf
        - require:
            - pkg: nss-pam-ldapd

