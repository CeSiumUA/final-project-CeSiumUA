CESIUM_TEST_PKG_VERSION = "1.0.0"

CESIUM_TEST_PKG_SITE := ./cesium_test_pkg
CESIUM_TEST_PKG_SITE_METHOD := local
CESIUM_TEST_PKG_INSTALL_TARGET := YES

$(eval $(kernel-module))
$(eval $(generic-package))