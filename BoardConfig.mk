#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/m52xq

include device/samsung/sm7325-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/lineage-m52xq_defconfig

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

# Recovery
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 420
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U

# OTA assert
TARGET_OTA_ASSERT_DEVICE := m52xq

# Security patch
VENDOR_SECURITY_PATCH := 2025-05-01

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
