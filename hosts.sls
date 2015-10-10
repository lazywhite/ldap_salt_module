server1:
    host.present:
        - ip: 10.10.30.11
        - names:
            - ldap.local.com

server2:
    host.present:
        - ip: 10.10.30.12
        - names:
            - client1.local.com
server3:
    host.present:
        - ip: 10.10.30.11
        - names:
            - salt
