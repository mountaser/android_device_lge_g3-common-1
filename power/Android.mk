LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_POWERHAL_VARIANT),d855)

include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c power-8974.c
LOCAL_MODULE := power.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

ifneq ($(TARGET_TAP_TO_WAKE_NODE),)		
   LOCAL_CFLAGS += -DTAP_TO_WAKE_NODE=\"$(TARGET_TAP_TO_WAKE_NODE)\"		
endif

endif