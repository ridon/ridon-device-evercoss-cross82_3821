$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

include device/mediatek/common-65xx/common.mk
$(call inherit-product-if-exists, vendor/mediatek/mt6582/mt6582-vendor.mk)

DEVICE_FOLDER := device/evercoss/cross82_3821
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

LOCAL_PATH := device/evercoss/cross82_3821
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/rootdir/fstab.mt6582:root/fstab.mt6582 \
	$(DEVICE_FOLDER)/rootdir/factory_init.rc:root/factory_init.rc \
	$(DEVICE_FOLDER)/rootdir/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
	$(DEVICE_FOLDER)/rootdir/init.mt6582.rc:root/init.mt6582.rc \
	$(DEVICE_FOLDER)/rootdir/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
	$(DEVICE_FOLDER)/rootdir/init.modem.rc:root/init.modem.rc \
	$(DEVICE_FOLDER)/rootdir/init.protect.rc:root/init.protect.rc 

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/blobs/meta_tst:root/sbin/meta_tst \
	$(DEVICE_FOLDER)/blobs/sbchk/sbchk:root/sbchk/sbchk \
	$(DEVICE_FOLDER)/blobs/sbchk/sec_chk.sh:root/sbchk/sec_chk.sh

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_cross82_3821
PRODUCT_DEVICE := cross82_3821
