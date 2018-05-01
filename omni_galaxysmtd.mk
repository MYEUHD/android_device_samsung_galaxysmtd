# Copyright (C) 2018 OmniROM Project
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

# These are OmniROM's hardware-specific configuration files.
DEVICE_PACKAGE_OVERLAYS += \
device/samsung/galaxysmtd/overlay

# bootanimation
TARGET_BOOTANIMATION_SIZE := 480x320

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/galaxysmtd/aosp_galaxysmtd.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_galaxysmtd

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

