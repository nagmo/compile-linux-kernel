# compile-linux-kernel
compilation script for linux kernel for operating systems students in technion


instructions:
  1. save the kernel files in a shared folder with the vm
  2. save the script in that folder (dont forget to change permitions!!)
  3. have fun modifying the kernel
  4. run the script: it will find all .c files that have changes in the past 24 hours and will copy them to their place in the      kernel, then run the commands to compile the kernel.

importent notice:
  - after running the script the conction will be lost, you need to reconect over ssh
  - if after reboot the script get stuck press "ctrl+z"
