#
# Copyright (C) 2021 The Potato Open Sauce Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit StatiX common configuration
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit Google Camera
$(call inherit-product, vendor/xiaomi/miatoll-gcam/miatoll-gcam-vendor.mk)

# Device identifier
PRODUCT_NAME := statix_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# StatiX flags
INCLUDE_PIXEL_LAUNCHER := true
TARGET_USES_BLUR := true
ENABLE_GAMETOOLS := true
