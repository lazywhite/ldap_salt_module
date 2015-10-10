vim-pkg:
    pkg.installed:
        - name: {{ pillar['vim'] }}


/etc/vimrc:
    file.managed:
        - source: salt://vim/vimrc
        - template: jinja
        - require:
            - pkg: {{ pillar['vim'] }}
