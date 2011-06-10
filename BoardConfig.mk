# Copyright (C) 2007 The Android Open Source Project
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


# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
#TARGET_HAVE_TSLIB := true
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI := armeabi-v6j

TARGET_BOOTLOADER_BOARD_NAME := u8100
TARGET_OTA_ASSERT_DEVICE := u8100

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

BOARD_HAVE_BLUETOOTH := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USES_OLD_LIBSENSORS_HAL := true

# for recovery.img
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8100/recovery_ui.c
BOARD_LDPI_RECOVERY := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

TARGET_HARDWARE_3D := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_NO_RGBX_8888 := true

BOARD_EGL_CFG := device/huawei/u8100/egl.cfg
BOARD_HAS_LIMITED_EGL := true

BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8100
BOARD_KERNEL_PAGESIZE := 4096

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8100

JS_ENGINE := v8

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 04600000 00020000 "cache"
# mtd6: 0bda0000 00020000 "userdata"
# mtd7: 01400000 00020000 "userdata2"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000   # limited so we enforce room to grow
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bda0000
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
#WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_NAME := ar6000
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ar6000.ko"
#WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/firmware.bin nvram_path=/system/etc/firmware/nvram.txt"

#BOARD_WLAN_ATHEROS_SDK := vendor/athoes/AR6kSDK/AR6kSDK.2.2.1.151

#for usb tethering
#BOARD_USE_HTC_USB_FUNCTION_SWITCH := true
