# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39E BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=ProjectBOX-$(shell date +"%Y.%m.%d") \
    ro.rommanager.developerid=jmarcet

# ROM Statistics and ROM Identification
PRODUCT_PROPERTY_OVERRIDES += \
ro.romstats.name=ProjectBOX \
ro.romstats.version=$(shell date +"%Y.%m.%d") \
ro.romstats.tframe=2
