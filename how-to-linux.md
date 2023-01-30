# How to Linux

## How to compress and optionally encrypt (using 7zip)
To compress to a zip file:
'7z a -tzip zipname.zip <files to compress>'

To compress and password protect
'7z a -tzip -p{password} zipname.zip <files to compress>'

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

## How to compare two lines in vim (e.g. sha checksums)
Select both lines, type the command ":sort u", if only one line remains, they were identical, otherwise not

## How to burn an iso file to a USB stick
run 'lsblk' before and after inserting the USB stick to learn its location
sudo dd bs=4M if=/path/to/manjaro.iso of=/dev/sd[drive letter] status=progress oflag=sync
