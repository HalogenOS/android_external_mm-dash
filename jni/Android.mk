LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    android_media_ExtMediaPlayer.cpp \

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libnativehelper \
    libutils \
    libbinder \
    liblog \
    libstagefright \
    libstagefright_foundation \
    libdl \
    libqcmediaplayer

LOCAL_C_INCLUDES += \
    $(TOP)/frameworks/base/core/jni \
    $(TOP)/frameworks/av/media/libstagefright \
    $(LOCAL_PATH)/.. \

LOCAL_CFLAGS := -DQC_SKIP_MEDIAPLAYER_CHECK

LOCAL_MODULE:= libextmedia_jni

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
