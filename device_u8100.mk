#
# Copyright (C) 2008 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8100/overlay
CYANOGEN_WITH_GOOGLE := true

# Kernel targets
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/u8100/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# HAL libs
PRODUCT_PACKAGES += \
    copybit.u8100 

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    dexpreopt

DISABLE_DEXPREOPT := false

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
    
# Hardware properties
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=60 \
    ro.sf.lcd_density=120 \
    ro.com.android.dataroaming=false

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=65537

# Perfomance tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=24m \
    persist.sys.use_dithering=1 \
    persist.sys.purgeable_assets=1 \
    ro.compcache.default=18
# Init
PRODUCT_COPY_FILES += \
    device/huawei/u8100/init.qcom.rc:root/init.u8100.rc \
    device/huawei/u8100/ueventd.u8100.rc:root/ueventd.u8100.rc

# OEM logo
PRODUCT_COPY_FILES += \
    device/huawei/u8100/prebuilt/initlogo.rle:root/initlogo.rle

# Hardware specific
PRODUCT_COPY_FILES += \
    device/huawei/u8100/include/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8100/include/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8100/include/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 
    
#    device/huawei/u8100/include/ts.conf:system/ts.conf \
#    device/huawei/u8100/include/inputraw.so:system/lib/inputraw.so \
#    device/huawei/u8100/include/pthres.so:system/lib/pthres.so \
#    device/huawei/u8100/include/dejitter.so:system/lib/dejitter.so \
#    device/huawei/u8100/include/libtslib.so:system/lib/libtslib.so \
#    device/huawei/u8100/include/linear.so:system/lib/linear.so 
    
# RIL specific
PRODUCT_COPY_FILES += \
    vendor/huawei/u8100/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8100/proprietary/bin/rild:system/bin/rild \
    vendor/huawei/u8100/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8100/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8100/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8100/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8100/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8100/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8100/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8100/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8100/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8100/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8100/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8100/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8100/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8100/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/huawei/u8100/proprietary/lib/libril.so:obj/lib/libril.so \
    vendor/huawei/u8100/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8100/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8100/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8100/proprietary/lib/libwmsts.so:system/lib/libwmsts.so

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/huawei/u8100/firmware/ar6000.ko:system/wifi/ar6000.ko \
    device/huawei/u8100/firmware/artagent:system/wifi/artagent \
    device/huawei/u8100/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    device/huawei/u8100/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    device/huawei/u8100/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    device/huawei/u8100/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    device/huawei/u8100/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    device/huawei/u8100/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    device/huawei/u8100/firmware/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
    device/huawei/u8100/firmware/device.bin:system/wifi/device.bin \
    device/huawei/u8100/firmware/eeprom.bin:system/wifi/eeprom.bin \
    device/huawei/u8100/firmware/eeprom.data:system/wifi/eeprom.data \
    device/huawei/u8100/firmware/iwconfig:system/wifi/iwconfig \
    device/huawei/u8100/firmware/iwlist:system/wifi/iwlist \
    device/huawei/u8100/firmware/loadART.sh:system/wifi/loadART.sh \
    device/huawei/u8100/firmware/loadecho.sh:system/wifi/loadecho.sh 
    
# Keychars/Keylayout
PRODUCT_COPY_FILES += \
    device/huawei/u8100/keylayout/ideos-keypad.kl:system/usr/keylayout/ideos-keypad.kl \
    device/huawei/u8100/keylayout/ideos-melfas-tk.kl:system/usr/keylayout/ideos-melfas-tk.kl \
    device/huawei/u8100/keylayout/ideos-synaptics-tk.kl:system/usr/keylayout/ideos-synaptics-tk.kl

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8100/proprietary/bin/modempre:system/bin/modempre \
    vendor/huawei/u8100/proprietary/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8100/proprietary/lib/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8100/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so
    
# OMX
PRODUCT_COPY_FILES += \
    vendor/huawei/u8100/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8100/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8100/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8100/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8100/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/huawei/u8100/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/huawei/u8100/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# Lights & Sensors
PRODUCT_COPY_FILES += \
    vendor/huawei/u8100/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
    vendor/huawei/u8100/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.u8100.so

# Bluetooth & Compass
PRODUCT_COPY_FILES += \
    device/huawei/u8100/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/huawei/u8100/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/huawei/u8100/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8100/include/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8100/include/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/huawei/u8100/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so
# Camera
PRODUCT_COPY_FILES += \
    vendor/huawei/u8100/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/huawei/u8100/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/huawei/u8100/proprietary/lib/libqcamera.so:system/lib/libqcamera.so \
    vendor/huawei/u8100/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/huawei/u8100/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/huawei/u8100/proprietary/lib/libmmprocess.so:system/lib/libmmprocess.so

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8100/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8100/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8100/firmware/autorun.iso:system/cdrom/autorun.iso \
    device/huawei/u8100/firmware/gps.default.so:system/lib/hw/gps.u8100.so \
    vendor/huawei/u8100/proprietary/lib/hw/gralloc.ideos.so:system/lib/hw/gralloc.u8100.so \
    vendor/cyanogen/proprietary/noFrillsCPU.apk:system/app/noFrillsCPU.apk

$(call inherit-product, build/target/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_us_supl.mk)


PRODUCT_NAME   := full_u8100
PRODUCT_DEVICE := u8100
PRODUCT_BRAND  := huawei
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1
