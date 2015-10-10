rsyslog-svc:
    service.running:
        - name: rsyslog
        - enable: True
        - watch:
            - file: /etc/rsyslog.conf
        - require:
            - pkg: rsyslog
