# check iso (obtain checksum)
sha256 file.iso

# compare checksums (in vim)
Select both lines, type the command ":sort u", if only one line remains, they were identical, otherwise not

# How to burn an iso file to a USB stick
run 'lsblk' before and after inserting the USB stick to learn its location
sudo dd bs=4M if=/path/to/manjaro.iso of=/dev/sd[drive letter] status=progress oflag=sync

# ssh
see https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys

# git
install 'less' in order to get git log etc to work

# pacman
## customize mirror pool: 
'sudo pacman-mirrors --country Germany,Denmark,Netherlands,France,Austria,Switzerland && sudo pacman -Syyu'
## get colors:
Go edit the file at '/etc/pacman.conf', there's a commented out line 'Color', uncomment that. Also to get yay to have colors.

# yay
Before you attempt to install yay, or do something like 'sudo pacman -S --needed base-devel git', do a system update and check whether the above command wants to install anything called sudo or pacman or so. This will likely result in disaster so don't do it.

# neovim
To get vim-plug to work, run
'curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
For ultisnips, install pip by running 'pacman -S python-pip python pynvim'

# fish
no idea why 'chsh -s /usr/bin/fish' does not work. The workaround is to keybind alacritty starting with fish to mod+enter: 'set $term alacritty -e fish' in sway/config
Install the package 'lsd' to get the lsd command to work.

# latex
Install texlive 

# zathura
Zathura needs a plugin to read pdfs and co. 'sudo pacman -S zathura-pdf-mupdf' for instance

# printing via cups (uni jena)
run
'sudo systemctl enable cups'
and
'sudo systemctl start cups'
Then make sure client.conf is linked to the /etc/cups/ folder and run
'systemctl restart cups.service'
Then go to
'http://localhost:631/'
To log in to Admin, use your local laptop's admin credentials
Click on "Administration" and "add printer", then choose "LPD/LPR Host or Printer" and 
Into the field connection, copy 'socket://mps02.mats.uni-jena.de'
Import the file 'fmi-cups-pcl6-mono.ppd' (located under dotfiles)
alternatively add manually a generic PCL6 driver,
go check the default settings 

# zoom 
## manual install:    
1. Download the TAR.XZ installer file from our Download Center.
2. Open the download location using a file manager.
3. Right click in the file manager and click Terminal to open the terminal in the current location.
4. Type in the following command and press Enter to run it.
  "sudo pacman -U zoom_x86_64.pkg.tar.xz"
5. Enter your admin password and continue the installation when prompted.
   Pacman will also download and install the required dependencies
## Uninstalling:
run "sudo pacman -Rs zoom"

# TLP
even if some permanent charge thresholds are set, tlp as a package might not be installed. 
If sudo tlp start fails, check whether tlp is installed

# Restore USB as empty
" To restore the USB drive as an empty, usable storage device after using the Arch ISO image, the ISO 9660 filesystem signature needs to be removed by running wipefs --all /dev/disk/by-id/usb-My_flash_drive as root, before repartitioning and reformatting the USB drive. " from https://wiki.archlinux.org/title/USB_flash_installation_medium

1. 'wipefs --all /dev/sd[x]'
2. 'sudo parted /dev/sdX'
3. (parted) 'print'
4. (parted) 'mklabel', then answer label type 'msdos'
5. (parted) 'mkpart', then answer partition type (primary) and file system type (eg ext4), as well as Start (0%) and End (100%)
6. (parted) 'print' again to see what we created
7. (parted) 'align-check' to check partition alignment
8. Reformat: makefs.ext4 /dev/sdX

If no permission to write etc. exists afterwards, try to fix access rights by running
'sudo chown -R USER:USER /path/to/mountpoint/'
