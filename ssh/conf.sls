/etc/ssh/sshd_config:
    file.managed:
        - source: salt://ssh/sshd_config.tpl
        - user: 0
        - group: 0
        - mode: 600
        - template: jinja
        - require:
            - pkg: openssh-server
