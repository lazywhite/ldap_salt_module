server1:
    host.present:
        - ip: 120.92.226.24
        - names:
            - ldap.local.com

server2:
    host.present:
        - ip: 120.92.229.88 
        - names:
            - ldap1.local.com
server3:
    host.present:
        - ip: 120.92.228.252
        - names:
            - ldap2.local.com

