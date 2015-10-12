server1:
    host.present:
        - ip: 119.29.33.234
        - names:
            - ldap.local.com
            - salt

server2:
    host.present:
        - ip: 115.159.33.247
        - names:
            - client1.local.com
server3:
    host.present:
        - ip: 119.28.13.254
        - names:
            - client2.local.com

server4:
    host.present:
        - ip: 119.28.14.117
        - names:
            - client3.local.com
