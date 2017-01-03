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

# This file includes all definitions that apply to ALL mako devices, and
# are also specific to mako devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/xiaomi/aries/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
	lights.msm8960

PRODUCT_COPY_FILES += \
	device/xiaomi/aries/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/xiaomi/aries/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/xiaomi/aries/WCNSS_qcom_wlan_nv.bin:system/vendor/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
#Audio
PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.aries \
	audio.primary.aries \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler \
	tinymix \
	libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
 	$(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml 

# thermald-engine
PRODUCT_COPY_FILES += \
	device/xiaomi/aries/configs/thermald-aries.conf:system/etc/thermald-8064.conf

PRODUCT_COPY_FILES += \
	device/xiaomi/aries/init.aries.rc:root/init.aries.rc \
	device/xiaomi/aries/init.aries.usb.rc:root/init.aries.usb.rc \
	device/xiaomi/aries/fstab.aries:root/fstab.aries \
	device/xiaomi/aries/ueventd.aries.rc:root/ueventd.aries.rc \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \

# Prebuilt kl and kcm keymaps

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/sensor00fn1a.kl:system/usr/keylayout/sensor00fn1a.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/rootdir/usr/keylayout/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	$(LOCAL_PATH)/rootdir/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	$(LOCAL_PATH)/rootdir/usr/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Charger

PRODUCT_COPY_FILES += \
    device/xiaomi/aries/chargeonlymode:root/sbin/chargeonlymode
    

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml


PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196608

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0
	ril.subscription.types=NV,RUIM
	ro.cdma.home.operator.numeric=46003
	ro.telephony.default_cdma_sub=0
# SoftAP
PRODUCT_PACKAGES += \
	libqsap_sdk \
	libQWiFiSoftApCfg \
	libwcnss_qmi \
	wcnss_service

# Audio Configuration
# FIXME: Remove persist.audio.handset.mic and persist.audio.fluence.mode
#        while switching new audio HAL from legacy HAL
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.handset.mic.type=digital \
	persist.audio.dualmic.config=endfire \
	persist.audio.fluence.voicecall=true \
	persist.audio.handset.mic=dmic \
	persist.audio.fluence.mode=endfire \
	persist.audio.lowlatency.rec=false

#
# Disable boot timeout for external modems.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.mdm.timeout_disable=1

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=0

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable=true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960


PRODUCT_PACKAGES += \
	power.msm8960

PRODUCT_COPY_FILES += \
	device/xiaomi/aries/init.aries.bt.sh:system/etc/init.aries.bt.sh

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

# Browser
PRODUCT_PACKAGES += \
    Browser

PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

# RIL
PRODUCT_PACKAGES += \
	libril_shim \
	hci_qcomm_init \
	telephony-ext

PRODUCT_BOOT_JARS += \
   telephony-ext
   
# GPS
PRODUCT_PACKAGES += \
        libloc_adapter \
        libloc_eng \
        libloc_api_v02 \
        libloc_ds_api \
        libloc_core \
        libizat_core \
        libgeofence \
        libgps.utils \
        gps.msm8960 \
        flp.msm8960
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

PRODUCT_PACKAGES += \
	bdAddrLoader \
	libbt-vendor

PRODUCT_PACKAGES += \
	keystore.msm8960

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig
#    librmnetctl \
#    rmnetcli

PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
	power.aries

PRODUCT_PACKAGES += \
	resize2fs_static
	
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=true \
	persist.data.tcpackprio.enable=true \
	ro.data.large_tcp_window_size=true

 # IPC router config
PRODUCT_COPY_FILES += \
	device/xiaomi/aries/lowi.conf:system/etc/lowi.conf


# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
        debug.egl.recordable.rgba8888=1

PRODUCT_PROPERTY_OVERRIDES += \
        ro.sys.sdcardfs=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sensors.wl_dis=true \
	ro.qualcomm.sensors.smd=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

# Snap Camera
PRODUCT_PACKAGES += \
	Snap

# Unbreak videorecording with Snap Camera
PRODUCT_PROPERTY_OVERRIDES += \
	persist.camera.cpp.duplication=false \
	media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true


$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
