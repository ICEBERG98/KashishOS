#! /bin/bash
if grub-file --is-x86-multiboot ./isodir/boot/myos.bin; then   echo 'multiboot confirmed'; else   echo 'the file is not multiboot'; fi
echo '----------------------buiding iso-------------------'
#cp myos.bin isodir/boot/myos.bin
#cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir
echo '-----------------------ISO Created------------------'
