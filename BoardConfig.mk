USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/m7/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := m7

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := m7

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=m7 user_debug=31
BOARD_KERNEL_BASE := 0x80600000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1946156032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27917287424
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/m7/kernel

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_INITRC := device/htc/m7/recovery/init.rc
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

DEVICE_RESOLUTION := 800x1280
TW_INCLUDE_DUMLOCK := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# cat /proc/emmc:
# dev: size erasesize name
# mmcblk0p19: 000ffa00 00000200 "misc"
# mmcblk0p34: 00fffe00 00000200 "recovery"
# mmcblk0p33: 01000000 00000200 "boot"
# mmcblk0p35: 73fffc00 00000200 "system"
# mmcblk0p26: 00140200 00000200 "local"
# mmcblk0p36: 27fffe00 00000200 "cache"
# mmcblk0p37: 680000000 00000200 "userdata"
# mmcblk0p22: 01400000 00000200 "devlog"
# mmcblk0p24: 00040000 00000200 "pdata"
# mmcblk0p27: 00010000 00000200 "extra"
# mmcblk0p31: 04b00200 00000200 "radio"
# mmcblk0p16: 03c00400 00000200 "adsp"
# mmcblk0p15: 00100000 00000200 "dsps"
# mmcblk0p17: 007ffa00 00000200 "radio_config"
# mmcblk0p20: 00400000 00000200 "modem_st1"
# mmcblk0p21: 00400000 00000200 "modem_st2"
# mmcblk0p28: 00100000 00000200 "cdma_record"
# mmcblk0p18: 02000000 00000200 "reserve_1"
# mmcblk0p30: 034ffa00 00000200 "reserve_2"
# mmcblk0p32: 05fffc00 00000200 "reserve_3"
# mmcblk0p29: 06069e00 00000200 "reserve"
