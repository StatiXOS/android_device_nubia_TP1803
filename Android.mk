LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),TP1803)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
