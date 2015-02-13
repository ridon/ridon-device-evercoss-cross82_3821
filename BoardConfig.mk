# inherit from the proprietary version
-include vendor/evercoss/cross82_3821/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mt6582

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

TARGET_BOOTLOADER_BOARD_NAME := cross82_3821

BOARD_KERNEL_CMDLINE := androidboot.console=ttyFIQ0 console=ttyFIQ0  console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=0-otm1283a_hd720_dsi_vdo androidboot.hardware=mt6582 printk.disable_uart=1 boot_reason=0  
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
USE_OPENGL_RENDERER := true

BOARD_PROTECT_FIMAGE_PARTITION_SIZE:=10485760
BOARD_PROTECT_SIMAGE_PARTITION_SIZE:=10485760
BOARD_SECROIMAGE_PARTITION_SIZE:=6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=734003200
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1072693248
BOARD_FATIMAGE_PARTITION_SIZE:=0
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CUSTOM_BOOTIMG_MK := device/mediatek/common-65xx/releasetools/bootimg.mk

TARGET_PREBUILT_KERNEL := device/evercoss/cross82_3821/kernel

RECOVERY_FSTAB_VERSION := 1
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_SEPOLICY_DIRS += \
    device/evercoss/cross82_3821/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    app.te \
    netd.te
