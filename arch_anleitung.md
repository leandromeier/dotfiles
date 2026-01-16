## Follow the installation guide (under https://wiki.archlinux.org/title/Installation_guide)

## Partition (if needed, if the current partition seems uncorrupted then just leave it as is): 
They are numbered from 1 to N, 1 has to be EFI, 2 has to be root then home can be 3 and you probably don't need more unless you want a swap (which is for hibernation, not suspend)
To allocate them a size, go into editing, choose the default starting point, specify the size in the format +xyzG (xyz the size of the partition)
Start with efi partition, then root, then home
After allocating size, label them UEFI, Linux and Linux home.
Format the partitions, (according to the guide) if necessary.

## Mount the partitions, according to the guide, starting with root, which is mounted to /mnt
EFI is mounted to /mnt/boot
Home to /mnt/home
Create the needed dirs
Run lsblk to verify that the partitions are mounted correctly
## Install networkmanager (to have wifi, **even if you're connected to LAN**) as well as the other packages the guide suggests 
## Grub needs to be installed and configured, according to the linked guide. Don't forget to configure it!
to intall GRUB, you could follow this guide: https://itsfoss.com/install-arch-linux/#step-9-install-grub-bootloader
Don't forget that you apparently need to be in chroot to make it work
### remember to make the main config file for grub:
run 'grub-mkconfig -o /boot/grub/grub.cfg'


## After reboot, login as root and make a user, adding it to the group 'wheel', giving it the shell 'fish' (ensure to install fish immediately after if not already done)
Give the group wheel sudo privileges by editing visudo. For this you might need to edit the default editor under (I think) /etc/sudoers to sth like /usr/bin/nvim.

Don't forget to give the user a password.



