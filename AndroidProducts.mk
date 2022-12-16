#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Product Makefiles
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/statix_curtana.mk \
    $(LOCAL_DIR)/statix_curtana_64.mk

# Lunch targets
COMMON_LUNCH_CHOICES := \
    statix_curtana-user \
    statix_curtana-userdebug \
    statix_curtana-eng \
    statix_curtana_64-user \
    statix_curtana_64-userdebug \
    statix_curtana_64-eng
