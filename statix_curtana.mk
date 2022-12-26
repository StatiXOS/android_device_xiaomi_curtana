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

# Inherit Google Camera
$(call inherit-product, vendor/xiaomi/miatoll-gcam/miatoll-gcam-vendor.mk)

# Device identifier
PRODUCT_NAME := statix_curtana
PRODUCT_DEVICE := curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9S
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# StatiX flags
ENABLE_GAMETOOLS := true
STATIX_BUILD_TYPE := CUSTOM
