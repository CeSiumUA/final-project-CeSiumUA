#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT_FOLDER_NAME=base_external
EXTERNAL_REL_BUILDROOT=../$EXTERNAL_REL_BUILDROOT_FOLDER_NAME
git submodule init
git submodule sync
git submodule update

set -e 
cd `dirname $0`

# Check if wpa_supplicant.conf exists
if [ ! -e $EXTERNAL_REL_BUILDROOT_FOLDER_NAME/rootfs_overlay/etc/wpa_supplicant.conf ]
then
    echo "MISSING WPA_SUPPLICANT CONFIGURATION FILE"
    ./generate_wpa_conf.sh
fi

if [ ! -e buildroot/.config ]
then
    echo "MISSING BUILDROOT CONFIGURATION FILE"
fi