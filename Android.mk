LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),TP1803)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libhidltransport
LOCAL_MODULE := android.hidl.base@1.0
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libhidltransport
LOCAL_MODULE := android.hidl.manager@1.0
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
endif
