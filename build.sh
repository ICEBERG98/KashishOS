#! /bin/bash

#export PATH="$HOME/opt/cross/bin:$PATH"
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/kernel.c -o ./target/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/gdt.c -o ./target/gdt.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra               
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/idt.c -o ./target/idt.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra              
$HOME/opt/cross/bin/i686-elf-as ./src/boot.s -o ./target/boot.o
$HOME/opt/cross/bin/i686-elf-gcc -T ./src/linker.ld -o ./isodir/boot/myos.bin -ffreestanding -O2 -nostdlib ./target/boot.o ./target/gdt.o ./target/idt.o ./target/kernel.o -lgcc
./scripts/toDisk.sh                                                                    
