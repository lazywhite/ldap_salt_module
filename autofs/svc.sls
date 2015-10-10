autofs-service:
    service.running:
        - name: autofs
        - enable: True
        - watch:
            - file: /etc/auto.user
        - require:
            - pkg: autofs
