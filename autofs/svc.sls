autofs:
    service.running:
        - watch:
            - file: /etc/auto.user
        - require:
            - pkg: autofs
