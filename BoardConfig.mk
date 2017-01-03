#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/xiaomi/aries/init/init_aries.cpp

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -DNO_SECURE_DISCARD 
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp -DNO_SECURE_DISCARD 
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=aries lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lge.kcal=0|0|0|x
BOARD_KERNEL_CMDLINE += earlyprintk=serial,ttyHSL0,115200,n8
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Inline kernel building
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/xiaomi/aries
TARGET_KERNEL_CONFIG := cyanogen_aries_defconfig
KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin/"
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# Audio
BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_AUDIO_EXPECTS_MIN_BUFFERSIZE := true
BOARD_AUDIO_AMPLIFIER := device/xiaomi/aries/audio/libaudioamp
BOARD_HAVE_AUDIENCE_ES310 := true
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_QCOM_FM := true
QCOM_FM_ENABLED := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
BOARD_USES_QC_TIME_SERVICES := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := ARIES
TARGET_BOOTLOADER_NAME=aries
TARGET_BOARD_INFO_FILE := device/xiaomi/aries/board-info.txt

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/aries/bluetooth

# Use clang
USE_CLANG_PLATFORM_BUILD := true

# Flags
BOARD_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Thermal
BOARD_USES_EXTRA_THERMAL_SENSOR := true

# RIL
BOARD_RIL_NO_CELLINFOLIST := true

# Use the QCOM PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_WCNSS_MAC_PREFIX := e8bba8
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WPA_SUPPLICANT_VERSION := VER_0_8_X


BOARD_EGL_CFG := device/xiaomi/aries/configs/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITON := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true

WITH_DEXPREOPT_BOOT_IMG_ONLY ?= false
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true


#for ota
BLOCK_BASED_OTA := false
TARGET_RECOVERY_FSTAB = device/xiaomi/aries/fstab.aries
RECOVERY_FSTAB_VERSION = 2
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01E00000 # 44M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


BOARD_USES_SECURE_SERVICES := true
BOARD_HAL_STATIC_LIBRARIES := libdumpstate.aries

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_GCC_LIBC := true
USE_DEVICE_SPECIFIC_CAMERA:= true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

# GPS
TARGET_NO_RPC := true
TARGET_PROVIDES_GPS_LOC_API := true

TARGET_RELEASETOOLS_EXTENSIONS := device/xiaomi/aries

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/xiaomi/aries/sepolicy

BOARD_CHARGER_ENABLE_SUSPEND := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

HAVE_ADRENO_SOURCE:= false

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

MALLOC_SVELTE := true
BOARD_HAS_NO_SELECT_BUTTON := true

## TWRP
#DEVICE_RESOLUTION := 720x1280
#RECOVERY_VARIANT :=twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_TARGET_USES_QCOM_BSP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

-include vendor/xiaomi/aries/BoardConfigVendor.mk
