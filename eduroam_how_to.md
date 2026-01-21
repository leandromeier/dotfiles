## connect to eduroam manually

Step 0: run the geteduroam / eduroam CAT install script, so that eduroam shows up in the list of known networks in nm-tui
Step 1: edit the configs for eduroam in nm-tui (under "edit a connection")
Step 2: follow the wiki guide, most important are the following fields
Anonymous identiy: geteduroam@uni-jena.de
CA_certificate: file:///etc/ssl/certs/ISRG_Root_X1.pem (this is where it should be located, just give the full path to where it actually is. Important: geteduroam sets a path "file:///home/blah", and /etc is not in home, so be sure to delete that part)
Username: <user-id>@uni-jena.de
Passwort: <your-password>

Link to wiki guide: https://wiki.uni-jena.de/spaces/URZ010SD/pages/186450349/Ubuntu+Linux+-+eduroam+WLAN+einrichten+manuell


