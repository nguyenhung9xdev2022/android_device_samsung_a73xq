#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Call the proprietary setup
$(call inherit-product, vendor/samsung/a73xq/a73xq-vendor.mk)

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.2-impl

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libcirrusspkrprot \
    libcomprcapture \
    libexthwplugin \
    libhdmiedid \
    libhfp \
    libqcompostprocbundle \
    libqcomvisualizer \
    libsndmonitor \
    libspkrprot \
    libvolumelistener

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(LOCAL_PATH)/configs/audio/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml
    
# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/charger_fstab.qti:$(TARGET_COPY_OUT_VENDOR)/etc/charger_fstab.qti \
    $(LOCAL_PATH)/rootdir/etc/charger_fw_fstab.qti:$(TARGET_COPY_OUT_VENDOR)/etc/charger_fw_fstab.qti

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.qcom \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/bin/init.class_main.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/bin/init.crda.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.crda.sh \
    $(LOCAL_PATH)/rootdir/bin/init.kernel.post_boot-lahaina.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.kernel.post_boot-lahaina.sh \
    $(LOCAL_PATH)/rootdir/bin/init.kernel.post_boot-shima.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.kernel.post_boot-shima.sh \
    $(LOCAL_PATH)/rootdir/bin/init.kernel.post_boot-yupik.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.kernel.post_boot-yupik.sh \
    $(LOCAL_PATH)/rootdir/bin/init.kernel.post_boot.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.kernel.post_boot.sh \
    $(LOCAL_PATH)/rootdir/bin/init.mdm.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.class_core.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.coex.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.coex.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.early_boot.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.efs.sync.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.post_boot.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.sdio.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.sdio.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.sensors.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.sensors.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.usb.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.chg_policy.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.chg_policy.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.display_boot.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.display_boot.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.kernel.debug-lahaina.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.kernel.debug-lahaina.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.kernel.debug-shima.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.kernel.debug-shima.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.kernel.debug-yupik.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.kernel.debug-yupik.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.kernel.debug.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.kernel.debug.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.kernel.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.kernel.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.media.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.media.sh \
    $(LOCAL_PATH)/rootdir/bin/init.qti.qcv.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qti.qcv.sh \
    $(LOCAL_PATH)/rootdir/bin/qca6234-service.sh:$(TARGET_COPY_OUT_VENDOR)/bin/qca6234-service.sh \
    $(LOCAL_PATH)/rootdir/bin/vendor_modprobe.sh:$(TARGET_COPY_OUT_VENDOR)/bin/vendor_modprobe.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.a73xq.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.a73xq.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.factory.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.factory.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qti.kernel.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qti.kernel.rc \
    $(LOCAL_PATH)/rootdir/etc/init.qti.ufs.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qti.ufs.rc \
    $(LOCAL_PATH)/rootdir/etc/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.target.rc  \
    $(LOCAL_PATH)/rootdir/etc/init.samsung.bsp.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.samsung.bsp.rc  \
    $(LOCAL_PATH)/rootdir/etc/init.samsung.display.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.samsung.display.rc  \
    $(LOCAL_PATH)/rootdir/etc/init.samsung.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.samsung.rc  \
    $(LOCAL_PATH)/rootdir/etc/init.samsung.svcled.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.samsung.svcled.rc

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Uevent
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc
