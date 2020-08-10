# Copyright (C) 2020 The PixelDust Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# inherit from device
$(call inherit-product, device/realme/RMX1971/device.mk)

# Bootanimation res
BOOTANIMATION := 1080

# Release name
PRODUCT_RELEASE_NAME := Realme 5 Pro
export TARGET_DEVICE := RMX1971

# Include common PixelDust stuff
include vendor/pixeldust/configs/pixeldust_phone.mk

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Google Apps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
REMOVE_GAPPS_PACKAGES += \
    GoogleCamera \
    NexusLauncherRelease

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixeldust_RMX1971
PRODUCT_DEVICE := RMX1971
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Pro
PRODUCT_MANUFACTURER := realme

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200805.001 6578210 release-keys" \
 	PRODUCT_NAME="RMX1971"
    
PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="Subray" \
    ro.pixeldust.device="RMX1971"
