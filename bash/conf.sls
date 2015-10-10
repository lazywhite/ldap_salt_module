/etc/bashrc:
    file.managed:
        - source: salt://bash/bashrc.tpl
        - mode: 400
        - user: 0
        - group: 0

