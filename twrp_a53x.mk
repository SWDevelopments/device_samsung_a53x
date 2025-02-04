#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a53x device
$(call inherit-product, device/samsung/a53x/device.mk)

PRODUCT_DEVICE := a53x
PRODUCT_NAME := twrp_a53x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A536E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a53xnsxx-user 12 SP1A.210812.016 A536EXXS5CWB6 release-keys"

BUILD_FINGERPRINT := samsung/a53xnsxx/a53x:12/SP1A.210812.016/A536EXXS5CWB6:user/release-keys
