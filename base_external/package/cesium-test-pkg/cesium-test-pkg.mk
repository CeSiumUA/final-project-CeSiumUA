
##############################################################
#
# cesium-test-pkg
#
##############################################################

CESIUM_TEST_PKG_VERSION = '6853c841cc612805ef03cc9884a3dee913a58d2d'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CESIUM_TEST_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
CESIUM_TEST_PKG_SITE_METHOD = git
CESIUM_TEST_PKG_GIT_SUBMODULES = YES

$(eval $(kernel-module))
$(eval $(generic-package))