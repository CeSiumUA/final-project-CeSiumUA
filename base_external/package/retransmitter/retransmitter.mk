
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

RETRANSMITTER_VERSION = '9a3843c4dd8925e1e0fe5e6ba3ffa2ceafc0ebc2'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
RETRANSMITTER_SITE = 'git@github.com:CeSiumUA/retransmitter.git'
RETRANSMITTER_SITE_METHOD = git
RETRANSMITTER_GIT_SUBMODULES = YES

define RETRANSMITTER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define RETRANSMITTER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/retransmitter $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/startup.sh $(TARGET_DIR)/etc/init.d/S99retransmitter
endef

$(eval $(generic-package))