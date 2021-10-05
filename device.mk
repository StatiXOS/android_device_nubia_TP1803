#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
#$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Platform
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := msmnile

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Blur
TARGET_USES_BLUR := true

# Display
PRODUCT_PACKAGES += \
    libvulkan

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml

# Input
PRODUCT_PACKAGES += \
    AuxiliaryKeyHandler \
    TP1803AuxKeyHandler

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml

PRODUCT_BOOT_JARS += \
    telephony-ext

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 30
