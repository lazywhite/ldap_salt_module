epel:
    pkgrepo.managed:
        - humanname: EPEL
        - mirrorlist: https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch
        - gpgcheck: 0

gluster:
    pkgrepo.managed:
        - humanname: Gluster-epel
        - baseurl: http://download.gluster.org/pub/gluster/glusterfs/3.6/LATEST/EPEL.repo/epel-$releasever/$basearch/
        - gpgcheck: 0


gluster-noarch:
    pkgrepo.managed:
        - humanname: Gluster-noarch-epel
        - baseurl: http://download.gluster.org/pub/gluster/glusterfs/3.6/LATEST/EPEL.repo/epel-$releasever/noarch
        - gpgcheck: 0
