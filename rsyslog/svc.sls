rsyslog:
    service.running:
        - watch:
            - file: /etc/rsyslog
        - require:
            - pkg: rsyslog
