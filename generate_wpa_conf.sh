#!/bin/bash

if [ -z "${BR_PROJECT_WIFI_SSID}" ]; then
    # Prompt the user for the SSID
    read -p "Enter the SSID: " ssid
else
    ssid="${BR_PROJECT_WIFI_SSID}"
fi

if [ -z "${BR_PROJECT_WIFI_PASSWORD}" ]; then
    # Prompt the user for the password
    read -sp "Enter the password: " password
else
    password="${BR_PROJECT_WIFI_PASSWORD}"
fi

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