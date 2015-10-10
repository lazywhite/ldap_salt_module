/etc/nsswitch.conf:
    file.managed:
        - source: salt://nsswitch/nsswitch.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: glibc

