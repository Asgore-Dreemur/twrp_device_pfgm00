# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oppo/PFGM00/device.mk)

# Device identifier
PRODUCT_DEVICE := PFGM00
PRODUCT_NAME := twrp_PFGM00
PRODUCT_BRAND := oppo
PRODUCT_MODEL := A93s
PRODUCT_MANUFACTURER := OPPO
