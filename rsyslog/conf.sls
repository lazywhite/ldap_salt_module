/etc/rsyslog.conf:
    file.managed:
        - source: salt://rsyslog/rsyslog.tpl
        - uesr: 0
        - group: 0
        - mode: 644
        - template: jinja
        - require:
            - pkg: rsyslog
