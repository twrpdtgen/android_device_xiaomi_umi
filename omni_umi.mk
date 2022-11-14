#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from umi device
$(call inherit-product, device/xiaomi/umi/device.mk)

PRODUCT_DEVICE := umi
PRODUCT_NAME := omni_umi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K30S Ultra
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_apollo-eng 11 RQ1A.210205.004 eng.sekaia.20220124.182849 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_apollo/umi:11/RQ1A.210205.004/sekaiacg01241827:eng/test-keys
