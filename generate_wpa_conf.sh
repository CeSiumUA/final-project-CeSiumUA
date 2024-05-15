#!/bin/bash

# Prompt the user for the SSID and password
read -p "Enter the SSID: " ssid
read -sp "Enter the password: " password

# Generate the wpa_supplicant.conf file
cat << EOF > base_external/rootfs_overlay/etc/wpa_supplicant.conf
ctrl_interface=/var/run/wpa_supplicant
ap_scan=1

network={
    ssid="$ssid"
    psk="$password"
    id_str="home"
}
EOF

echo "wpa_supplicant.conf has been generated."