# This is an automounter map and it has the following format
# key [ -mount-options-separated-by-comma ] location
# Details may be found in the autofs(5) manpage

#cd     -fstype=iso9660,ro,nosuid,nodev :/dev/cdrom
*       -fstype=nfs     ldap1.local.com:/home/&

# the following entries are samples to pique your imagination
#linux      -ro,soft,intr       ftp.example.org:/pub/linux
#boot       -fstype=ext2        :/dev/hda1
#floppy     -fstype=auto        :/dev/fd0
#floppy     -fstype=ext2        :/dev/fd0
#e2floppy   -fstype=ext2        :/dev/fd0
#jaz        -fstype=ext2        :/dev/sdc1
#removable  -fstype=ext2        :/dev/hdd

