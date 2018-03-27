#!/bin/bash

#find files modified in the past 24 hours, ingnore hidden files (get only .c files)
files=`find . -not -path "*/\.*" -name "*.c" -mtime -1 -print`

#for every file copy to the correct place in the kernel library
for file in $files; do
        cp $file "/usr/src/linux-2.4.18-14custom${file:1}"      
done

make /usr/src/linux-2.4.18-14custom/bzImage
cp /usr/src/linux-2,4,18custom/arch/i386/boot/bzImage /usr/src/linux-2,4,18custom/arch/i386/boot/vmlinuz-2.4.18-14custom
reboot
