#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common
include device/virt/common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO := true
DEVICE_PATH := device/virt/virtio

# Bootconfig
BOARD_BOOTCONFIG += \
    androidboot.hardware=virtio

# Kernel
BOARD_KERNEL_CMDLINE += \
    androidboot.partition_map=vda,super\;vdb,metadata\;vdc,userdata\;sda1,sdcard

BOARD_USES_GENERIC_KERNEL_IMAGE := true

RECOVERY_RAMDISK_KERNEL_MODULES += \
    failover.ko \
    net_failover.ko \
    virtio-gpu.ko \
    virtio_input.ko \
    virtio_net.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES +=  \
    $(patsubst %,$(VIRTUAL_DEVICE_KERNEL_MODULES_PATH)/%,$(RECOVERY_RAMDISK_KERNEL_MODULES))

BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := \
    $(DEVICE_PATH)/config/modules.blocklist

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096

# Platform
TARGET_BOARD_PLATFORM := virtio

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor
