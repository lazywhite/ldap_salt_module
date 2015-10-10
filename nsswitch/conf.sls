/etc/nsswitch.conf:
    file.managed:
        - source: salt://nsswitch/nsswitch.tpl
        - user: 0
        - group: 0
        - mode: 644
        - template: jinja
        - require:
            - pkg: glibc

