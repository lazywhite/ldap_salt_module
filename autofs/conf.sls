/etc/autofs.master:
    file.managed:
        - source: salt://autofs/autofs.master.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: autofs
/etc/autofs.user:
    file.managed:
        - source: salt://autofs/autofs.user.tpl
        - user: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: autofs
