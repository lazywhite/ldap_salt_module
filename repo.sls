epel:
    pkgrepo.managed:
        - humanname: EPEL
        - mirrorlist: https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch
        - gpgcheck: 0
