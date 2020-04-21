# /opt
src=/media/battleman/Lacie/Backup_w540_debian_20200416_1600.tar.gz 

sudo tar src -xvf -C / --strip-components=1 --wildcards --files-from restore.txt
