# How to Linux

## How to compress and optionally encrypt (using 7zip)
To compress to a zip file:
7z a -tzip zipname.zip <files to compress>

To compress and password protect
7z a -tzip -p{password} zipname.zip <files to compress>

To set a password on a compressed file
7za a -p{password} compressed-file.tar.7z

To decompress
7z e zipname.zip (or another file tipe filename.filetpye)


## How to connect a device to this laptop via bluetooth, using bluez
Start bluez (bluetoothctl)
'power on'
'pairable on'
'scan on'
'pair ...' to pair with desired device
'trust ...' to trust desired device (should eliminate the need to re-pair)
'connect ...' to conect to desired device (will not always work)


## How to spellcheck in vim
start: setlocal spell
end: set nospell
add good word: zg
add bad word: zw
get word suggestions: z=

