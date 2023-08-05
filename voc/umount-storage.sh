#!/bin/bash

# Unmount the things needed to do cutting and checking on events recorded by the C3VOC

mountpoint ~/voc/fuse > /dev/null
if [ $? -eq 0 ];
	then sudo umount -l ~/voc/fuse
fi
mountpoint ~/voc/encoded > /dev/null
if [ $? -eq 0 ];
	then sudo umount -l ~/voc/encoded
fi
