#!/bin/sh


if [ $1 == 'boot' ]
	then
		qemu-system-i386 -hda tinycore.qcow -net nic -net tap,ifname=tap0,script=no,downscript=no -m 512
		#qemu-system-i386 -hda tinycore.qcow -m 512

fi

if [ $1 == 'cd' ]
	then
		qemu-system-i386 -hda tinycore.qcow -cdrom Core-current.iso -boot d -m 512

fi

if [ $1 == 'create' ]
	then
		qemu-img create -f qcow2 tinycore.qcow $2

fi
