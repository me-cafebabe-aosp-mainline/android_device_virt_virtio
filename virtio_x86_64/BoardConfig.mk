include device/generic/shared/board_config/arch/x86_64_arm64.mk
include device/generic/shared/board_config/cmdline/x86.mk
include device/generic/shared/board_config/sepolicy/x86.mk
include device/virt/virtio/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE += console=ttyS0
