# Inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk


# Inherit from the common montblanc definitions
-include device/sony/montblanc-common/BoardConfigCommon.mk


# Enable non PIE support
TARGET_ENABLE_NON_PIE_SUPPORT := true


# Platform specific headers
TARGET_SPECIFIC_HEADER_PATH += device/sony/kumquat/include


# Kernel specific configurations
TARGET_KERNEL_CONFIG := xperiau_defconfig


# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_FSTAB := device/sony/kumquat/config/fstab.st-ericsson


# Specific flag for LED bar notification
#TARGET_USES_ILLUMINAION_BAR := true
COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION -DSECOND_NOTIFICATION


# Device identifiers for updates
TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat


# Sensors
SOMC_CFG_SENSORS := true
SOMC_CFG_SENSORS_COMPASS_LSM303DLHC := yes
SOMC_CFG_SENSORS_ACCELEROMETER_LSM303DLHC_LT := yes
SOMC_CFG_SENSORS_LIGHT_AS3676 := yes
SOMC_CFG_SENSORS_LIGHT_AS3676_PATH := "/sys/devices/platform/nmk-i2c.2/i2c-2/2-0040"
SOMC_CFG_SENSORS_LIGHT_AS3676_MAXRANGE := 10800
SOMC_CFG_SENSORS_PROXIMITY_APDS9702 := yes


# SELinux
#BOARD_SEPOLICY_DIRS += device/sony/kumquat/sepolicy
