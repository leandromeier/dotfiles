# How to Linux

## Getting around python modules that were installed in the wrong version
(probably really should figure out how to fix but I could not)
If a module is in /usr/lib/python3.xyz, yet the current version is python3.abc, then by creating a symlink between where the module is, and where it should be, resolves the ModuleNotFoundError


## How to compress and optionally encrypt (using 7zip)
To compress to a zip file:
'7z a -tzip zipname.zip <files to compress>' To compress and password protect '7z a -tzip -p{password} zipname.zip <files to compress>'

To set a password on a compressed file
'7za a -p{password} compressed-file.tar.7z'

To decompress
'7z x zipname.zip'

The following decompresses as well but does not remember folder structure of the compressed content
'7z e zipname.zip'


## How to connect a device to this laptop via bluetooth, using bluez
Start bluez (bluetoothctl)
'power on'
'pairable on'
'scan on'
'pair ...' to pair with desired device
'trust ...' to trust desired device (should eliminate the need to re-pair)
'connect ...' to conect to desired device (will not always work)

### in case connecting via blueman does not work (keeps disconnecting when pairing)
in the file /etc/bluetooth/input.conf change the line `UserspaceHID=true` to `UserspaceHID=false`


## How to spellcheck in vim
start: set spell
start and specify language: setlocal spell spelllang=de_20 (or another language)
end: set nospell
add good word: zg
add bad word: zw
get word suggestions: z=

## Packages
Don't forget to update packages installed via snap, or if neither pacman nor yay can find a local package, try snap as well.

## How to compare two lines in vim (e.g. sha checksums)
Select both lines, type the command ":sort u", if only one line remains, they were identical, otherwise not

## How to burn an iso file to a USB stick
run 'lsblk' before and after inserting the USB stick to learn its location
sudo dd bs=4M if=/path/to/manjaro.iso of=/dev/sd[drive letter] status=progress oflag=sync

## Change file permissions
'chmod 755 -R /path/to/folder' (recursively) or just
'chmod 755 /path/to/file'
this grants read, write and execute permissions to the user, and only read and write to 'the group' and 'others', respectively.
Of course, replacing the 7 and 5's by other digits yields other results, cf. https://www.howtogeek.com/437958/how-to-use-the-chmod-command-on-linux/

## Scripts
Write a script: create a file 'filename.sh'. Its first line must consist only of '#!/bin/bash'.
To make it executable, go into bash and run 'chmod +x filename.sh'.
To execute, run '/.filename.sh'.

## curl
to copy text content under a url to a file
'curl -fLo path/to/file <url>


## connect to FSU (FMI) net via openconnect
'sudo openconnect -b --useragent 'AnyConnect' --user=to75teh@uni-jena.de --pid-file=/var/run/vpn.pid --timestamp --syslog vpn.sci.uni-jena.de'

## ghostscript to reduce pdf file size
'ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dQUIET -dDetectDuplicateImage -dCompressFonts=true -r150 -o output.pdf input.pdf'

## nvim swap files
are stored under .local/state/nvim/swap

## tlp
to start: 'sudo tlp start'
to get status: tlp-stat -s'
to get battery info: 'sudo tlp-stat -b'
settings may be stored permanently (beyond current OS)
edit the file under /etc/tlp.conf to set start and stop charge thresholds
Default: start 75, stop 80
see also https://linrunner.de/tlp/index.html

## adjust brightness using ddcutil
uses the command line based ddcutil application.
to start it, you might need to load the kernel module i2c-dev, do this by typing 'modprobe i2c-dev'.

### Some commands
To get what feature 10 is:
'ddcutil capabilities | grep "Feature: 10"'

to get more info on feature 10
'ddcutil getvcp 10'

to set a value for feature 10: (here value = 70)
'ddcutil setvcp 10 70'


## manually installing packages 
### from github
1. clone the git repo
2. make sure there is a setup.py file. If not, need to find out what to do
3. run "sudo python setup.py install"
    to update: 
    run the same command (after pulling the changes)


