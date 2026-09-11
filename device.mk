#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResDevice \
    SettingsProviderResDevice \
    SystemUIResDevice \
    WifiResDevice

# Init files
PRODUCT_PACKAGES += \
    init.m52xq.rc \
    wifi_firmware.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_4630947232161729154.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947232161729154.xml

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/uinput-sec-fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-sec-fp.kl

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
