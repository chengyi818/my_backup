#!/bin/sh

### functions
delete_dup() {
    num=`find . -name "*.tgz" | wc -l`
    echo "backup file num:$num"
    if [ $num -gt 3 ]; then
        filename=`find . -name "*.tgz" | sort | awk -F: 'NR==1 {print}'`
        rm $filename
        echo "remove $filename"
    fi
}

backup() {
    sudo tar zcvfp system_tmp.tgz                               \
        --exclude=/sys                                          \
        --exclude=/mnt                                          \
        --exclude=/media                                        \
        --exclude=/lost+found                                   \
        --exclude=/cdrom                                        \
        --exclude=/proc                                         \
        --exclude=/tmp                                          \
        --exclude=/dev                                          \
        --exclude=/boot                                         \
        --exclude=/initrd.img                                   \
        --exclude=/vmlinuz                                      \
        --exclude=/lib/modules                                  \
        --exclude=/lib/modprobe.d                               \
        --exclude=/lib/modules-load.d                           \
        --exclude=/etc/modules                                  \
        --exclude=/etc/modprobe.d                               \
        --exclude=/etc/modules-load.d                           \
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
        /
}

rename() {
    mv system_tmp.tgz system_`date +%Y-%m-%d_%H:%M`.tgz
}

### MAIN()
delete_dup
backup
rename
