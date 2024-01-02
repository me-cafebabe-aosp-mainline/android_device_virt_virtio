include device/generic/shared/board_config/arch/arm64.mk
include device/virt/virtio/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CMDLINE += console=ttyAMA0 earlyprintk=ttyAMA0
