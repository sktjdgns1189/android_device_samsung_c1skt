#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec
TARGET_LIBINIT_DEFINES_FILE := device/samsung/c1skt/init/init_c1.cpp
TARGET_UNIFIED_DEVICE := true

TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/c1skt

# Bionic
MALLOC_IMPL := dlmalloc

# RIL
#BOARD_PROVIDES_LIBRIL := true
#BOARD_MODEM_TYPE := cmc221
TARGET_SPECIFIC_HEADER_PATH := device/samsung/c1skt/include
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Sensors
BOARD_USES_OPENSOURCE_SENSORS := false

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/c1skt/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_c1skt_defconfig
BOARD_RIL_CLASS := ../../../device/samsung/c1skt/ril

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/c1skt/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/c1skt/selinux

# assert
TARGET_OTA_ASSERT_DEVICE := c1,c1skt,c1ktt,c1lgt,SHV-E210S,SHV-E210K,SHV-E210L,e210s,e210k,e210l,m0,m0xx,i9300

# inherit from the proprietary version
-include vendor/samsung/c1skt/BoardConfigVendor.mk
