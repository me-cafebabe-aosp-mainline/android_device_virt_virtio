#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Initialize variables
DEVICE_MANIFEST_FILE :=

# Inherit from common
$(call inherit-product, device/virt/common/device-common.mk)

# Audio
$(call inherit-product, device/generic/shared/hardware/templates/audio/audio-example-aidl.mk)

# Graphics
$(call inherit-product, device/generic/shared/hardware/templates/graphics/virgl-3daccel.mk)

# Kernel
EMULATOR_KERNEL_FILE := $(KERNEL_ARTIFACTS_PATH)/kernel-$(TARGET_KERNEL_USE)
PRODUCT_COPY_FILES += $(EMULATOR_KERNEL_FILE):kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# Recovery
PRODUCT_COPY_FILES += \
    device/virt/common/config/ueventd.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.virtio.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# VINTF
DEVICE_MANIFEST_FILE += \
    $(LOCAL_PATH)/config/manifest.xml
