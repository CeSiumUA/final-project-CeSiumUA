
##############################################################
#
# cesium-test-pkg
#
##############################################################

TEST_OVERLAY_PKG_VERSION = 'da0a17fc18f6457b55e1a06e6aaf9c3e417e2291'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEST_OVERLAY_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
TEST_OVERLAY_PKG_SITE_METHOD = git
TEST_OVERLAY_PKG_GIT_SUBMODULES = YES

define TEST_OVERLAY_PKG_BUILD_CMDS
	echo "Building testoverlay.dtbo"
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) dt
	echo "Building testoverlay.dtbo done"
endef

define TEST_OVERLAY_PKG_INSTALL_TARGET_CMDS
	echo "Installing testoverlay.dtbo"
	mkdir -p $(TARGET_DIR)/boot/overlays
	cp -f $(@D)/testoverlay.dtbo $(TARGET_DIR)/boot/overlays
	file $(TARGET_DIR)/boot/overlays/testoverlay.dtbo
	echo "Installing testoverlay.dtbo done"
endef

$(eval $(generic-package))