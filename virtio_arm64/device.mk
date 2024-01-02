include device/generic/goldfish/arm64-kernel.mk
$(call inherit-product, device/virt/virtio/device.mk)

# Virtualization
$(call inherit-product, packages/modules/Virtualization/apex/product_packages.mk)
