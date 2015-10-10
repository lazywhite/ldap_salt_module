base:
    '*.local.com':
        - vim
        - ldap.client

    'client*.local.com':
        - rsyslog.agent

    'ldap.local.com':
        - rsyslog.master
