#
# Copyright (C) 2016 ShevT
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

DEVCOMMON_PATH := device/huawei/omap4-common

# Replace Camera2 to Snap
PRODUCT_PACKAGES += \
    Snap

# Snap Camera
# set sdCard as default storage
PRODUCT_PROPERTY_OVERRIDES += \
    persist.env.camera.saveinsd=true

# Media / Audio
PRODUCT_COPY_FILES += \
    $(DEVCOMMON_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml
