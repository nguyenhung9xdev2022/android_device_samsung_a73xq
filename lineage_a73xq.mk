#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a73xq device
$(call inherit-product, device/samsung/a73xq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a73xq
PRODUCT_DEVICE := a73xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A736B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Fingerprint
BUILD_FINGERPRINT := "samsung/a73xqxx/a73xq:11/RP1A.200720.012/A736BXXU2AVG3:user/release-keys"
PRIVATE_BUILD_DESC := "a73xqxx-user 12 SP1A.210812.016 A736BXXU2AVG3 release-keys"
