#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 mdeejay
# Copyright (C) 2013 faust93
# Copyright (C) 2013-2016 ShevT
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

VIVACOMMON_PATH := device/huawei/omap4-common/viva-common

DEVICE_PACKAGE_OVERLAYS += \
    $(VIVACOMMON_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init scripts
PRODUCT_COPY_FILES += \
    $(VIVACOMMON_PATH)/rootdir/init.front.rc:root/init.front.rc \
    $(VIVACOMMON_PATH)/rootdir/init.front.usb.rc:root/init.front.usb.rc \
    $(VIVACOMMON_PATH)/rootdir/ueventd.front.rc:root/ueventd.front.rc \
    $(VIVACOMMON_PATH)/rootdir/fstab.front:root/fstab.front

# Media / Audio
PRODUCT_COPY_FILES += \
    $(VIVACOMMON_PATH)/configs/audio/viva_audio_config.conf:system/etc/huawei/audio/viva_audio_config.conf \
    $(VIVACOMMON_PATH)/configs/audio/viva_factory_audio_config.conf:system/etc/huawei/audio/viva_factory_audio_config.conf

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hw_gps=47511

# LCD density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
