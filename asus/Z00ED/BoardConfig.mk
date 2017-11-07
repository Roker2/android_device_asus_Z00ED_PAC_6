#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8916-common
-include device/asus/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/Z00ED

# Assert
TARGET_OTA_ASSERT_DEVICE := Z00ED,Z00E,Z00E_2,ASUS_Z00E,ASUS_Z00E_2

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
#TARGET_KERNEL_CONFIG := ze500kl_defconfig
TARGET_PREBUILT_KERNEL := device/asus/Z00ED/prebuild/zImage

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# inherit from the proprietary version
-include vendor/asus/Z00E/BoardConfigVendor.mk

# TWRP
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi

#Scripts of kernel
TARGET_SPECIFIC_HEADER_PATH := device/asus/Z00ED/original-headers
