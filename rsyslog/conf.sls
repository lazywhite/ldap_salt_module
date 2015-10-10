/etc/rsyslog.conf:
    file.managed:
        - uesr: 0
        - group: 0
        - mode: 644
        - require:
            - pkg: rsyslog
