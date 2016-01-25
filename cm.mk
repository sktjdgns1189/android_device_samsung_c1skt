# Release name
PRODUCT_RELEASE_NAME := c1skt

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/c1skt/full_c1skt.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c1skt
PRODUCT_NAME := cm_c1skt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-c1skt
PRODUCT_MANUFACTURER := samsung
