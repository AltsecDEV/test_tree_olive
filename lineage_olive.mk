#
# Copyright (C) 2020 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := olive

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from olive device
$(call inherit-product, $(LOCAL_PATH)/olive.mk)

# Inherit some common Lineage stuff
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from this configs
$(call inherit-product, build/target/product/embedded.mk)
#$(call inherit-product, vendor/omni/config/common.mk)

Treble Support
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)


PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olive
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := xiaomi_olive
PRODUCT_MODEL := Redmi 8

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.adb.secure=0

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olive
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 9 PKQ1.190319.001 V11.0.7.0.PCNMIXM release-keys"
