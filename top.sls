base:
    "*.local.com":
        - vim
        - repo
        - nfs
        - hosts
        - user
        - bash
        - pam
        - ssh
        - ldap
        - sudo
        - pam
        - rsyslog
        - nsswitch
        - nslcd

    "client*.local.com":
        - autofs
