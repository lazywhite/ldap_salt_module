/etc/nsswitch.conf:
    file.managed:
        - source: salt://ns/nsswitch.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: glibc

/etc/nscd.conf:
    file.managed:
        - source: salt://ns/nscd.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: nscd

/etc/nslcd.conf:
    file.managed:
        - source: salt://ns/nslcd.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: nss-pam-ldapd
