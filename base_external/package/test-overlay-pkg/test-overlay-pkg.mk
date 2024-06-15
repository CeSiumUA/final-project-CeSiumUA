
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

define TEST_OVERLAY_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) dts
endef

define TEST_OVERLAY_PKG_INSTALL_CMDS
	mkdir -p $(TARGET_DIR)/boot/overlays
	cp -f $(@D)/testoverlay.dtbo $(TARGET_DIR)/boot/overlays
endef

$(eval $(generic-package))