# Inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk


# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk


# Platform specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/kumquat/include


# Kernel specific defconfig
TARGET_KERNEL_CONFIG := xperiau_defconfig


# Partition specific information
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FORCE_KERNEL_ADDRESS  := 0x00008000
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_KERNEL_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id=1 logo.nologo root=/dev/ram0 rw rootwait console=null androidboot.console=null androidboot.hardware=st-ericsson mem=96M@0 mem_mtrace=15M@96M mem_mshared=1M@111M mem_modem=16M@112M mem=32M@128M mem_issw=1M@160M hwmem=71M@161M mem=280M@232M mpcore_wdt.mpcore_margin=359 end
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_VOLD_MAX_PARTITIONS := 16
TARGET_USERIMAGES_USE_EXT4 := true


# Specific recovery configuration
BOARD_HAS_SDCARD_INTERNAL := true


# Specific flag for LED bar notification
COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION -DSECOND_NOTIFICATION


# Device identifiers for updates
TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat
