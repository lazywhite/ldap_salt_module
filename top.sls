base:
    "*.local.com":
        - hosts
        - user
        - bash
        - vim
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

