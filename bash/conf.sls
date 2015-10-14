/etc/bashrc:
    file.managed:
        - source: salt://bash/bashrc.tpl
        - mode: 644
        - user: 0
        - group: 0
        - template: jinja


