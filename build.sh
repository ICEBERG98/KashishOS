#export PATH="$HOME/opt/cross/bin:$PATH"

#export PATH="$HOME/opt/cross/bin:$PATH"
echo 'Compiling kernel.c'
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/kernel.c -o ./target/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
echo 'done'
echo 'Compiling gdt.c'
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/gdt.c -o ./target/gdt.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra               
echo 'done'
echo 'Compiling isr.c'
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/isr.c -o ./target/isr.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
echo 'done'
echo 'compiling idt.c'
$HOME/opt/cross/bin/i686-elf-gcc -c ./src/idt.c -o ./target/idt.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
echo 'done'
echo 'Assembling boot.s'
$HOME/opt/cross/bin/i686-elf-as ./src/boot.s -o ./target/boot.o -I ./src/
echo 'done'
echo 'linking all the files together'
$HOME/opt/cross/bin/i686-elf-gcc -T ./src/linker.ld -o ./isodir/boot/myos.bin -ffreestanding -O2 -nostdlib ./target/boot.o ./target/isr.o ./target/idt.o ./target/gdt.o ./target/kernel.o -lgcc
echo 'done'
echo 'conveting the generated file to iso format'
./scripts/toDisk.sh
echo 'done'
