#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for orangepi_zero builds
ORANGEPI_ZERO_DEFCONFIG=configs/orangepi_zero_defconfig
# The place we store customizations to the orangepi_zero configuration
MODIFIED_ORANGEPI_ZERO_DEFCONFIG=base_external/configs/aesd_orangepi_zero_defconfig
# The defconfig from the buildroot directory we use for the project
AESD_DEFAULT_DEFCONFIG=${ORANGEPI_ZERO_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${MODIFIED_ORANGEPI_ZERO_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}