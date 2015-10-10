sshd:
    service.running:
        - watch:
            - file: /etc/ssh/sshd_config
        - require:
            - pkg: openssh-server
    
