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
$(call inherit-product-if-exists, vendor/google/gms/config.mk)
$(call inherit-product-if-exists, vendor/google/pixel/config.mk)

# Boot animation
scr_resolution := 1080
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
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 9 Pro XL
PRODUCT_NAME_FOR_ATTESTATION := komodo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=komodo \
    PRIVATE_BUILD_DESC="komodo-user 14 AP3A.241005.015 12366759 release-keys"

BUILD_FINGERPRINT := google/komodo/komodo:15/AP3A.241005.015/12366759:user/release-keys

$(call inherit-product, vendor/google_devices/komodo/komodo-vendor.mk)

