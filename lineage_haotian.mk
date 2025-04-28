#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from haotian device.
$(call inherit-product, device/xiaomi/haotian/device.mk)

## Device identifier
PRODUCT_DEVICE := haotian
PRODUCT_NAME := lineage_haotian
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2410DPN6CC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "haotian haotian 15 AQ3A.240812.002 OS2.0.101.0.VOBCNXM:user release-keys")

BUILD_FINGERPRINT := Xiaomi/haotian/haotian:15/AQ3A.240812.002/OS2.0.101.0.VOBCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi