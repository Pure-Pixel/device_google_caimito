#
# Copyright 2021 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/google/caimito/aosp_komodo.mk)

# Gapps
WITH_GMS := true
$(call inherit-product, vendor/google/gms/products/gms.mk)
$(call inherit-product-if-exists, vendor/google/pixel-additional/config.mk)
$(call inherit-product, device/google/caimito/pure/configs/common.mk)
$(call inherit-product, device/google/caimito/props.mk)

# Themed icons for Pixel Launcher
$(call inherit-product, vendor/google/overlays/ThemeIcons/config.mk)

TARGET_SUPPORTS_GOOGLE_CAMERA := true
TARGET_GOOGLE_CAMERA_LARGE_RAM := true
TARGET_SUPPORTS_SATELLITE_SOS := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_DSE_CHOICE_SCREEN := true
# Pixel Battery/Adaptive Charging
TARGET_SUPPORTS_GOOGLE_BATTERY := true
#TARGET_SUPPORTS_ADPATIVE_CHARGING := true
TARGET_SUPPORTS_GOOGLE_NETWORK_STACK := false
MAINLINE_INCLUDE_TETHERING_MODULE := false
TARGET_SUPPORTS_CLEAR_CALLING := true
TARGET_SUPPORTS_FIR_PROXIMITY_SENSORS := true
TARGET_SUPPORTS_PIXEL_SCREENSHOTS := true
TARGET_SUPPORTS_PIXEL_STUDIO := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_IMS := true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_INCLUDE_PIXEL_FRAMEWORKS := true
TARGET_SUPPORTS_FIR_PROXIMITY_SENSORS := true

TARGET_SUPPORTS_PIXEL_SCREENSHOTS := true

TARGET_SUPPORTS_PIXEL_STUDIO := true

#######
RELEASE_PIXEL_2024_ENABLED := true
TARGET_PIXEL_EXPERIENCE_2024 := true
TARGET_PIXEL_EXPERIENCE_2023 := true
TARGET_PIXEL_EXPERIENCE_2022 := true

TARGET_SUPPORTS_DREAMLINER := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot Animation
$(call inherit-product, device/google/caimito/bootanimation/bootanimation.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_NAME := komodo

PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google

PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_DEVICE_FOR_ATTESTATION := komodo
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
#PRODUCT_MODEL_FOR_ATTESTATION := Pixel 9 Pro XL
PRODUCT_NAME_FOR_ATTESTATION := komodo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=komodo \
    PRIVATE_BUILD_DESC="komodo-user 14 AP3A.241005.015 12366759 release-keys"

BUILD_FINGERPRINT := google/komodo/komodo:15/AP3A.241005.015/12366759:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
    
$(call inherit-product, vendor/google_devices/komodo/komodo-vendor.mk)
