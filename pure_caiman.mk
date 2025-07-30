# Junky weird shit
#TARGET_DISABLE_EPPE := true
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := caiman
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google_devices/caiman
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro
PRODUCT_NAME := pure_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2856
TARGET_SCREEN_WIDTH := 1280

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="caiman-user 16 BP2A.250705.008 13578956 release-keys" \
    BuildFingerprint=google/caiman/caiman:16/BP2A.250705.008/13578956:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, vendor/google_devices/caiman/caiman.mk)
$(call inherit-product, vendor/gms/gms_full.mk)
