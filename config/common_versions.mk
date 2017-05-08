
# Versioning System
PRODUCT_VERSION_MAJOR = 6
PRODUCT_VERSION_MINOR = 0

AOSIP_BUILDTYPE ?= KANG

ROM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(AOSIP_BUILDTYPE)-$(CUSTOM_BUILD)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.aosip.version=$(ROM_VERSION) \
  ro.aosip.device=$(CUSTOM_BUILD) \
  ro.modversion=$(ROM_VERSION)