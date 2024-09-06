# How to Linux

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
