CESIUM_TEST_PKG_VERSION = "1.0.0"

CESIUM_TEST_PKG_SITE = file://./
CESIUM_TEST_PKG_SITE_METHOD = file

$(eval $(kernel-module))
$(eval $(generic-package))