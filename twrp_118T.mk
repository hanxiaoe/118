#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 118T device
$(call inherit-product, device/ulefone/118T/device.mk)

PRODUCT_DEVICE := 118T
PRODUCT_NAME := twrp_118T
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := 118T
PRODUCT_MANUFACTURER := ulefone

PRODUCT_GMS_CLIENTID_BASE := android-ulefone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1rck61v164bspP51 release-keys"

BUILD_FINGERPRINT := Ulefone/118T/118T:12/SP1A.210812.016/1681875184:user/release-keys
