
##############################################################
#
# cesium-test-pkg
#
##############################################################

CESIUM_TEST_PKG_VERSION = '491c4dacc88402bba3d7b60fbcf06519b275cdde'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CESIUM_TEST_PKG_SITE = 'git@github.com:CeSiumUA/lkm-test.git'
CESIUM_TEST_PKG_SITE_METHOD = git
CESIUM_TEST_PKG_GIT_SUBMODULES = YES

$(eval $(kernel-module))
$(eval $(generic-package))