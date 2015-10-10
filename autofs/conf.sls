/etc/auto.master:
    file.managed:
        - source: salt://autofs/auto.master.tpl
        - user: 0
        - group: 0
        - mode: 644
        - template: jinja
        - require:
            - pkg: autofs
/etc/auto.user:
    file.managed:
        - source: salt://autofs/auto.user.tpl
        - user: 0
        - group: 0
        - mode: 644
        - template: jinja
        - require:
            - pkg: autofs
