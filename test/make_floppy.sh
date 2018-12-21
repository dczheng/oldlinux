nasm boot.asm -o boot.bin
sudo losetup /dev/loop0 floppy.img
sudo dd bs=512 if=boot.bin of=/dev/loop0 count=1
sudo losetup -d /dev/loop0
