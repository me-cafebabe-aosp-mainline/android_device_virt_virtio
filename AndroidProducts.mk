PRODUCT_MAKEFILES := \
    aosp_virtio_arm64_pc:$(LOCAL_DIR)/virtio_arm64/pc/aosp_virtio.mk \
    aosp_virtio_x86_64_pc:$(LOCAL_DIR)/virtio_x86_64/pc/aosp_virtio.mk \

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += aosp_virtio_arm64_pc-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += aosp_virtio_x86_64_pc-$(build_type)))
