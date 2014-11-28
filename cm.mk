## Specify phone tech before including full_phone
$(call inherit-product, vendor/ridon/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := cross82_3821

# Inherit some common CM stuff.
$(call inherit-product, vendor/ridon/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/evercoss/cross82_3821/device_cross82_3821.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cross82_3821
PRODUCT_NAME := cm_cross82_3821
PRODUCT_BRAND := evercoss
PRODUCT_MODEL := cross82_3821
PRODUCT_MANUFACTURER := evercoss
