#!/bin/bash

# Script to fix Bluetooth audio profile on Bose QC Ultra (or any device)
# Run manually when the device does not properly connect

# Device MAC address (replace with your actual MAC)
DEVICE_MAC="BC:87:FA:48:42:CA"  

echo "Disconnecting headphones..."
bluetoothctl disconnect "$DEVICE_MAC"
sleep 1
echo "...re-connecting headphones..."
bluetoothctl connect "$DEVICE_MAC"
echo "...success!"
