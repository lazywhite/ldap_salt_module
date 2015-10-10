ldap:
    user.present:
        - fullname: ldap
        - shell: /sbin/nologin
        - home: /var/lib/ldap
        - uid: 55
        - gid: 55
        - groups:
            - ldap
