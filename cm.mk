# Copyright (C) 2014 The CyanogenMod Project
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

# Boot Animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_HALF_RES := true

$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device specific display resolutions
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi

# Build fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ST25i_1262-1172 \
    PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.100 m7t3zw test-keys" \
    BUILD_FINGERPRINT="SEMC/ST25i_1262-1172/ST25i:4.0.4/6.1.1.B.1.100/m7t3zw:user/release-keys"

# Device identifier
PRODUCT_DEVICE := kumquat
PRODUCT_NAME := cm_kumquat
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia U
PRODUCT_MANUFACTURER := Sony
