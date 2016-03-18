#!/bin/sh
# sudo rsync -avzP --delete --progress / /home/chengyi/backup/backup_mobile --exclude-from=/home/chengyi/personal_shell/exclude.list
sudo tar zcvfp backup_tmp.tgz  --exclude=/backup.tgz --exclude=/sys --exclude=/mnt --exclude=/media --exclude=/lost+found --exclude=/cdrom --exclude=/initrd.img --exclude=/vmlinuz --exclude=/proc --exclude=/tmp --exclude=/home/chengyi/code --exclude=/dev --exclude=/boot --exclude=/home/chengyi/.wine --exclude=/home/chengyi/.wiznote --exclude=/home/chengyi/.thunderbird --exclude=/home/chengyi/Music --exclude=/home/chengyi/Videos --exclude=/home/chengyi/.local/share/Trash/files /
mv backup_tmp.tgz backup.tgz
