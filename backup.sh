#!/bin/sh
# sudo rsync -avzP --delete --progress / /home/chengyi/backup/backup_mobile --exclude-from=/home/chengyi/personal_shell/exclude.list
sudo tar zcvfp backup_tmp.tgz                               \
    --exclude=./backup.tgz                                  \
    --exclude=/sys                                          \
    --exclude=/mnt                                          \
    --exclude=/media                                        \
    --exclude=/lost+found                                   \
    --exclude=/cdrom                                        \
    --exclude=/proc                                         \
    --exclude=/tmp                                          \
    --exclude=/dev                                          \
    --exclude=/home/swap                                    \
    --exclude=/home/chengyi/code                            \
    --exclude=/home/chengyi/Downloads                       \
    --exclude=/home/chengyi/Documents                       \
    --exclude=/home/chengyi/Pictures                        \
    --exclude=/home/chengyi/Music                           \
    --exclude=/home/chengyi/Videos                          \
    --exclude=/home/chengyi/.wine                           \
    --exclude=/home/chengyi/.cache                          \
    --exclude=/home/chengyi/.wiznote                        \
    --exclude=/home/chengyi/.thunderbird                    \
    --exclude=/home/chengyi/.local/share/Trash/files        \
    --exclude=/boot                                         \
    --exclude=/initrd.img                                   \
    --exclude=/vmlinuz                                      \
    /
mv backup_tmp.tgz backup.tgz
