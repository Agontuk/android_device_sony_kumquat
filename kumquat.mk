# Inherit from AOSP
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)


# Inherit from the common montblanc definitions
$(call inherit-product, device/sony/montblanc-common/montblanc.mk)


# Inherit from the device specific vendor definitions
$(call inherit-product-if-exists, vendor/sony/kumquat/kumquat-vendor.mk)


# Device specific settings overlays
DEVICE_PACKAGE_OVERLAYS += device/sony/kumquat/overlay


# Device specific configuration scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/fstab.st-ericsson:root/fstab.st-ericsson \
	$(LOCAL_PATH)/config/init.st-ericsson.device.rc:root/init.st-ericsson.device.rc \
	$(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml


# Device specific hardware configuration scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/dash.conf:system/etc/dash.conf \
	$(LOCAL_PATH)/prebuilt/hw_config.sh:system/etc/hw_config.sh \
	$(LOCAL_PATH)/config/cflashlib.cfg:system/etc/cflashlib.cfg \
	$(LOCAL_PATH)/config/flashled_param_config.cfg:system/etc/flashled_param_config.cfg


# Device specific bootlogo and charging animation
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/logo-480x854.rle:root/logo.rle
$(call inherit-product, $(LOCAL_PATH)/prebuilt/resources-480x854.mk)

# TWRP
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(LOCAL_PATH)/config/init.recovery.st-ericsson.rc:root/init.recovery.st-ericsson.rc

# Device specific USB configuration script
PRODUCT_COPY_FILES += $(LOCAL_PATH)/config/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc


# Device specific keylayouts and touchscreen configurations files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl \
	$(LOCAL_PATH)/config/cyttsp_key.kl:system/usr/keylayout/cyttsp_key.kl \
	$(LOCAL_PATH)/config/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
	$(LOCAL_PATH)/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
	$(LOCAL_PATH)/config/simple_remote_appkey.kl:system/usr/keylayout/simple_remote_appkey.kl \
	$(LOCAL_PATH)/config/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
	$(LOCAL_PATH)/config/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
	$(LOCAL_PATH)/config/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl \
	$(LOCAL_PATH)/config/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl


# Android kind of memory
PRODUCT_CHARACTERISTICS := nosdcard


# PC Companion kind of memory
PRODUCT_PROPERTY_OVERRIDES += ro.semc.product.user_storage=emmc_only


# Hardware video codecs configurations
PRODUCT_PROPERTY_OVERRIDES += \
  ste.video.dec.mpeg4.in.size=8192 \
  ste.video.enc.out.buffercnt=5 \
  ste.video.dec.recycle.delay=1 \
  ste.video.decoder.max.hwmem=0x2600000 \
  ste.video.decoder.max.res=720p \
  ste.video.decoder.h264.max.lev=3.2

# Reduce background apps limit to 16 on low-tier devices
PRODUCT_PROPERTY_OVERRIDES += \
  ro.sys.fw.bg_apps_limit=16

# Disable JIT code cache to free up some ram when the device is running
PRODUCT_PROPERTY_OVERRIDES += \
  dalvik.vm.jit.codecachesize=0

# Device specific proprieties
# References: 
# - http://source.android.com/devices/tuning.html (Round to ceil)
# - http://en.wikipedia.org/wiki/Pixel_density#Calculation_of_monitor_PPI
# - https://source.android.com/devices/low-ram.html
PRODUCT_PROPERTY_OVERRIDES += \
  ro.hwui.texture_cache_size=9 \
  ro.hwui.layer_cache_size=7 \
  ro.hwui.path_cache_size=2 \
  ro.sf.lcd_density=240 \
  ro.config.low_ram=true


