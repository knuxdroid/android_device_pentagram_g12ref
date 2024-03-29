USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pentagram/g12ref/BoardConfigVendor.mk

# These have been copied from https://github.com/FASTCHIP/TWRP_ritmix_rmd1035/blob/master/BoardConfigs/KK_UBIFS_classic_BoardConfig.mk
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_BOARD_PLATFORM := meson6
# Fun fact: According to the system.prop, the full board name is g12refM806A2PTGL, hence the "g12ref" codename has been given to this device. TODO: See if we'll need to add this full board name here.
TARGET_BOOTLOADER_BOARD_NAME := g12ref
TARGET_NO_BOOTLOADER := true
# TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_SIMULATOR := false
TARGET_PROVIDES_INIT_RC := true

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 loglevel=8
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x40000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x40000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/pentagram/g12ref/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

TARGET_RECOVERY_INITRC := device/pentagram/g12ref/rootdir/init.rc
TARGET_RECOVERY_FSTAB := device/pentagram/g12ref/rootdir/fstab.g12ref

DEVICE_RESOLUTION := 1024x768
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

#TW_FLASH_FROM_STORAGE := true
#TW_CUSTOM_POWER_BUTTON := 116
#TW_NO_REBOOT_BOOTLOADER := true
#TWHAVE_SELINUX := true

# TWRP
TW_THEME := portrait_mdpi
# TODO: See if this is actually required.
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
