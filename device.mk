DEVICE_PATH := device/oppo/PFGM00

# API
PRODUCT_SHIPPING_API_LEVEL := 31 # ro.board.first_api_level

# A/B
AB_OTA_UPDATER := false # 启用A/B无缝更新

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true # 动态分区

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH) # 命名空间