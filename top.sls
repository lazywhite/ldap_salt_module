base:
    "*.local.com":
        - repo
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

    "*":
        - vim
