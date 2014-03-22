# Inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk


# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk


# Platform specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/kumquat/include


# Kernel specific configurations
TARGET_KERNEL_CONFIG := xperiau_defconfig


# Specific recovery configuration
BOARD_HAS_SDCARD_INTERNAL := true


# Specific flag for LED bar notification
COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION -DSECOND_NOTIFICATION


# Device identifiers for updates
TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat
