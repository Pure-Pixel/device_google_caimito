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
#TARGET_SUPPORTS_GOOGLE_BATTERY := true
#TARGET_SUPPORTS_ADPATIVE_CHARGING := true
TARGET_SUPPORTS_CLEAR_CALLING := true

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

# Props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true
    
# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.control_privapp_permissions=log
    
# Gboard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.enable_gil= \
    setupwizard.feature.enable_restore_anytime=true \
    setupwizard.feature.enable_wifi_tracker=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true \
    setupwizard.feature.portal_notification=true \
    setupwizard.feature.provisioning_profile_mode=true \
    setupwizard.feature.show_digital_warranty=false \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v4_light

# StorageManager configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.storage_manager.show_opt_in=false

# OPA configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# Google legal
PRODUCT_PRODUCT_PROPERTIES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html

# Google Play services configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# New charging information
PRODUCT_PRODUCT_PROPERTIES += \
    charging_string.apply_lotx=true \
    charging_string.apply_v2=true

# WFC Activation
PRODUCT_PRODUCT_PROPERTIES += \
    ro.gwfcactivation.disabled_carriers=1492
    
# TextClassifier
PRODUCT_PACKAGES += \
	libtextclassifier_annotator_en_model \
	libtextclassifier_annotator_universal_model \
	libtextclassifier_actions_suggestions_universal_model \
	libtextclassifier_lang_id_model
        
# Use gestures by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay

# StorageManager configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.storage_manager.show_opt_in=false

# DRM Service
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true
    
# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# One Handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true \
            
# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER ?= true
TARGET_INCLUDE_STOCK_ARCORE ?= true
TARGET_INCLUDE_LIVE_WALLPAPERS ?= true
TARGET_SUPPORTS_QUICK_TAP ?= false
TARGET_SUPPORTS_CALL_RECORDING ?= true    

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.usb.config=adb
