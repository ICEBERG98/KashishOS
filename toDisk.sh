#! /bin/bash
if grub-file --is-x86-multiboot myos.bin; then   echo 'multiboot confirmed\n'; else   echo 'the file is not multiboot\n'; fi
#cp myos.bin isodir/boot/myos.bin
#cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir
echo 'ISO Created\n'
