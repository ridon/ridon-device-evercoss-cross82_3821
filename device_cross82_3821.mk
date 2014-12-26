$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/evercoss/cross82_3821/cross82_3821-vendor.mk)

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
	$(DEVICE_FOLDER)/rootdir/fstab:root/fstab \
	$(DEVICE_FOLDER)/rootdir/ueventd.rc:root/ueventd.rc \
	$(DEVICE_FOLDER)/rootdir/init.aee.customer.rc:root/init.aee.customer.rc \
	$(DEVICE_FOLDER)/rootdir/init.charging.rc:root/init.charging.rc \
	$(DEVICE_FOLDER)/rootdir/init.environ.rc:root/init.environ.rc \
	$(DEVICE_FOLDER)/rootdir/init.modem.rc:root/init.modem.rc \
	$(DEVICE_FOLDER)/rootdir/init.no_ssd.rc:root/init.no_ssd.rc \
	$(DEVICE_FOLDER)/rootdir/init.project.rc:root/init.project.rc \
	$(DEVICE_FOLDER)/rootdir/init.protect.rc:root/init.protect.rc \
	$(DEVICE_FOLDER)/rootdir/init.rc:root/init.rc \
	$(DEVICE_FOLDER)/rootdir/init.trace.rc:root/init.trace.rc \
	$(DEVICE_FOLDER)/rootdir/init.usb.rc:root/init.usb.rc \
	$(DEVICE_FOLDER)/rootdir/init.xlog.rc:root/init.xlog.rc \
	$(DEVICE_FOLDER)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	$(DEVICE_FOLDER)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	$(DEVICE_FOLDER)/rootdir/meta_init.rc:root/meta_init.rc

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/blobs/meta_tst:root/sbin/meta_tst \
	$(DEVICE_FOLDER)/blobs/sbchk/sbchk:root/sbchk/sbchk \
	$(DEVICE_FOLDER)/blobs/sbchk/sec_chk.sh:root/sbchk/sec_chk.sh


# Kludge
PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/blobs/placeholder:root/data/placeholder \
	$(DEVICE_FOLDER)/blobs/placeholder:root/sys/placeholder \
	$(DEVICE_FOLDER)/blobs/placeholder:root/dev/placeholder \
	$(DEVICE_FOLDER)/blobs/placeholder:root/system/placeholder \
	$(DEVICE_FOLDER)/blobs/placeholder:root/proc/placeholder

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_cross82_3821
PRODUCT_DEVICE := cross82_3821
