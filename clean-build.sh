#!/bin/bash
# Script intended to run from pipeline to build a project
# Author: CeSiumUA

export BR2_DL_RIR=$HOME/.buildroot_dl_cache

mkdir -p ${BR2_DL_RIR}

rm -rf buildroot/.config

echo "Running build.sh for the first time"

bash build.sh

if [ $? -ne 0 ]; then
    echo "First build failed"
    exit 1
fi

echo "Running save-config.sh"

bash save-config.sh
if [ $? -ne 0 ]; then
    echo "save-config.sh failed"
    exit 1
fi

echo "Running build.sh for the second time"
bash build.sh
if [ $? -ne 0 ]; then
    echo "Second build failed"
    exit 1
fi