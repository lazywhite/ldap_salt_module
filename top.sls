base:
    "*.local.com":
        - user
        - group
        - vim
        - repo
        - glusterfs
        - hosts
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
