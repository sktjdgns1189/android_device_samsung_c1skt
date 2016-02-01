# Release name
PRODUCT_RELEASE_NAME := c1skt

# Inherit some common CM stuff.
$(call inherit-product, vendor/dokdo/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/c1skt/full_c1skt.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c1skt
PRODUCT_NAME := dokdo_c1skt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SHV-E210S
PRODUCT_MANUFACTURER := samsung

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/dokdo/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip