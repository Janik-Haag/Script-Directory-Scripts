#!/bin/bash

# Mount the things needed to do cutting and checking on events recorded by the C3VOC

mkdir -p ~/voc/fuse
mkdir -p ~/voc/encoded

mountpoint ~/voc/fuse > /dev/null
if [ $? -eq 32 ];
	then sudo mount.cifs //storage.lan.c3voc.de/fuse ~/voc/fuse -orw,guest,uid=$(id -u)
fi

mountpoint ~/voc/encoded > /dev/null
if [ $? -eq 32 ];
	then sudo mount.cifs //storage.lan.c3voc.de/encoded ~/voc/encoded -orw,guest,uid=$(id -u)
fi
