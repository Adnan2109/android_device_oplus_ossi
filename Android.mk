LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ossi)

# Include all .rc files from ini/core, ini/hal, ini/logging
FILE_LIST := $(wildcard $(LOCAL_PATH)/ini/core/*.rc) \
             $(wildcard $(LOCAL_PATH)/ini/hal/*.rc) \
             $(wildcard $(LOCAL_PATH)/ini/logging/*.rc)

$(foreach rc_file,$(FILE_LIST),$(eval \
    PRODUCT_COPY_FILES += $(rc_file):$(TARGET_OUT)/etc/init/$(notdir $(rc_file)) \
))

endif
