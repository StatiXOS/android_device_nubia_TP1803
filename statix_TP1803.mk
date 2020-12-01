# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from TP1803 device
$(call inherit-product, device/nubia/TP1803/device.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

PRODUCT_BRAND := Nubia
PRODUCT_DEVICE := TP1803
PRODUCT_MANUFACTURER := Nubia
PRODUCT_NAME := statix_TP1803
PRODUCT_MODEL := Mini 5G

PRODUCT_GMS_CLIENTID_BASE := android-nubia
TARGET_VENDOR := nubia
TARGET_VENDOR_PRODUCT_NAME := TP1803
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="TP1803-user 9 PKQ1.190504.001 eng.nubia.20190618.151633 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.201005.004/6782484:user/release-keys
