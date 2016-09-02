#!/bin/sh
if [ ! -n "$1" ] ; then
        filename=`find . -name "*.tgz" | sort -r| awk -F: 'NR==1 {print}'`
        echo "filename"
        sudo tar zxvfp $filename -C /
else
	sudo tar zxvfp $1 -C /
fi
