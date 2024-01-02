DEVICE_IS_64BIT_ONLY := false
include device/generic/shared/product_type/generic_handheld_telephony.mk

$(call inherit-product, device/virt/virtio/virtio_x86_64/device.mk)

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

PRODUCT_NAME := aosp_virtio_x86_64_pc
PRODUCT_DEVICE := virtio_x86_64
PRODUCT_BRAND := VirtIO
PRODUCT_MANUFACTURER := VirtIO
PRODUCT_MODEL := VirtIO x86_64 PC

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)
