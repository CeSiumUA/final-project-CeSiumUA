
##############################################################
#
# nrf24
#
##############################################################

NRF24_VERSION = 'final-testing'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
NRF24_SITE = 'git@github.com:CeSiumUA/nrf24l01_linux_driver.git'
NRF24_SITE_METHOD = git
NRF24_GIT_SUBMODULES = YES

define NRF24_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) dtbo
endef

define NRF24_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/boot/overlays
	cp -f $(@D)/nrf24_overlay.dtbo $(TARGET_DIR)/boot/overlays
	file $(TARGET_DIR)/boot/overlays/nrf24_overlay.dtbo
endef

$(eval $(kernel-module))
$(eval $(generic-package))