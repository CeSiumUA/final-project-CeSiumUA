
##############################################################
#
# cesium-test-pkg
#
##############################################################

CESIUM_TEST_PKG_VERSION = 'b439cd5bc6bb4cd7057ca4040c4694266c8ae3c7'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CESIUM_TEST_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
CESIUM_TEST_PKG_SITE_METHOD = git
CESIUM_TEST_PKG_GIT_SUBMODULES = YES

$(eval $(kernel-module))
$(eval $(generic-package))