#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Product Makefiles
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_miatoll.mk \
    $(LOCAL_DIR)/aosp_miatoll_64.mk

# Lunch targets
COMMON_LUNCH_CHOICES := \
    aosp_miatoll-user \
    aosp_miatoll-userdebug \
    aosp_miatoll-eng \
    aosp_miatoll_64-user \
    aosp_miatoll_64-userdebug \
    aosp_miatoll_64-eng
