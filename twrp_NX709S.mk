#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX709S device
$(call inherit-product, device/nubia/NX709S/device.mk)

PRODUCT_DEVICE := NX709S
PRODUCT_NAME := twrp_NX709S
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX709S
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX709S-user 12 SKQ1.220502.001 eng.nubia.20230513.165016 release-keys"

BUILD_FINGERPRINT := nubia/NX709S/NX709S:12/SKQ1.220502.001/eng.nubia.20230513.165016:user/release-keys
