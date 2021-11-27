# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/atoll.mk)

# Inherit some common Awaken OS stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := awaken_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true
