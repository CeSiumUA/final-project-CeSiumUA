
##############################################################
#
# cesium-test-pkg
#
##############################################################

CESIUM_TEST_PKG_VERSION = '23b03c5fce4a8fa0a83b09e1c21e99b71111a59c'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CESIUM_TEST_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
CESIUM_TEST_PKG_SITE_METHOD = git
CESIUM_TEST_PKG_GIT_SUBMODULES = YES

$(eval $(kernel-module))
$(eval $(generic-package))