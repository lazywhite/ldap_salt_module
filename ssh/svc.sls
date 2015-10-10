sshd:
    service.running:
        - enable: True
        - watch:
            - file: /etc/ssh/sshd_config
        - require:
            - pkg: openssh-server
    
