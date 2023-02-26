#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from curtana device
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Inherit StatiX common configuration
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Device identifier
PRODUCT_NAME := statix_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9S
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Game overlay
ENABLE_GAMETOOLS := true

# Override build fingerprint
BUILD_FINGERPRINT := Redmi/curtana_global/curtana:12/RKQ1.211019.001/V13.0.2.0.SJWMIXM:user/release-keys
