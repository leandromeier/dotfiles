uses the command line based ddcutil application.
to start it, you might need to load the kernel module i2c-dev, do this by typing 'modprobe i2c-dev'.

# Some commands
To get what feature 10 is:
'ddcutil capabilities | grep "Feature: 10"'

to get more info on feature 10
'ddcutil getvcp 10'

to set a value for feature 10: (here value = 70)
'ddcutil setvcp 10 70'
