glibc:
    pkg.installed

nscd-pkg:
    pkg.installed: 
        - name: nscd


nss-pam-ldapd:
    pkg.installed
