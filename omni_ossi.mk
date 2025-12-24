#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from core Android
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Omni common config
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/oplus/ossi/device.mk)

# Device identifiers
PRODUCT_DEVICE := ossi
PRODUCT_NAME := omni_ossi
PRODUCT_SYSTEM_NAME := ossi
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2719
PRODUCT_MANUFACTURER := oplus

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-oplus

# Build properties (match stock)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2719EEA-user 14 UKQ1.231108.001 1763482850396 release-keys"

BUILD_FINGERPRINT := OnePlus/CPH2719EEA/ossi:14/UKQ1.231108.001/1763482850396:user/release-keys
