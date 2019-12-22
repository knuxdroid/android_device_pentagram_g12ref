# Release name
PRODUCT_RELEASE_NAME := g12ref

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pentagram/g12ref/device_g12ref.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g12ref
PRODUCT_NAME := cm_g12ref
PRODUCT_BRAND := pentagram
PRODUCT_MODEL := g12ref
PRODUCT_MANUFACTURER := pentagram
