
##############################################################
#
# cesium-test-pkg
#
##############################################################

TEST_OVERLAY_PKG_VERSION = '71b83a29acdefbdea94a8d505f43f0ed43d1e801'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
TEST_OVERLAY_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
TEST_OVERLAY_PKG_SITE_METHOD = git
TEST_OVERLAY_PKG_GIT_SUBMODULES = YES

define TEST_OVERLAY_PKG_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) dt
endef

define TEST_OVERLAY_PKG_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/boot/overlays
	cp -f $(@D)/testoverlay.dtbo $(TARGET_DIR)/boot/overlays
	file $(TARGET_DIR)/boot/overlays/testoverlay.dtbo
endef

$(eval $(generic-package))