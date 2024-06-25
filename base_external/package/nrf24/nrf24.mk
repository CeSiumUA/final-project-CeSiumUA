
##############################################################
#
# nrf24
#
##############################################################

NRF24_VERSION = '24efc5fd56b0d3d7737291e65472accfb87cc78a'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
NRF24_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
NRF24_SITE_METHOD = git
NRF24_GIT_SUBMODULES = YES

define NRF24_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) dt
endef

define NRF24_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/boot/overlays
	cp -f $(@D)/testoverlay.dtbo $(TARGET_DIR)/boot/overlays
	file $(TARGET_DIR)/boot/overlays/testoverlay.dtbo
endef

$(eval $(kernel-module))
$(eval $(generic-package))