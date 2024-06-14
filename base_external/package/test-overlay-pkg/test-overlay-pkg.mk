
##############################################################
#
# cesium-test-pkg
#
##############################################################

TEST_OVERLAY_PKG_VERSION = 'c93e0c6a0aa072cacb64c65813918bcf646477c5'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEST_OVERLAY_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
TEST_OVERLAY_PKG_SITE_METHOD = git
TEST_OVERLAY_PKG_GIT_SUBMODULES = YES

define TEST_OVERLAY_PKG_INSTALL_CMDS

mkdir -p $(TARGET_DIR)/boot/overlays
dtc -@ -I dts -O dtb -o $(@D)/testoverlay.dtbo $(@D)/testoverlay.dts
cp -f $(@D)/testoverlay.dtbo $(TARGET_DIR)/boot/overlays

endef

$(eval $(generic-package))