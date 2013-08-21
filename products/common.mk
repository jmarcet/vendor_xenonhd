SUPERUSER_EMBEDDED := true

# Generic product
PRODUCT_NAME := xenonhd
PRODUCT_BRAND := xenonhd
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/common

PRODUCT_PACKAGES += \
	CMFileManager \
	DSPManager \
	Onager \
	LatinImeDictionaryPack \
	LockClock \
	libcyanogen-dsp \
        audio_effects.conf \
        PermissionsManager \
	ROMSettings \
	Superuser \
	su \
        Torch \
        AOKPTorch \
	VoicePlus

# prebuilts
PRODUCT_PACKAGES += \
	AdAway \
	CSipSimple \
	KLPC \
	YouTube

#extras	
PRODUCT_PACKAGES += \
	openvpn \
	e2fsck \
	mke2fs \
	tune2fs \
	bash \
	libssh \
	ssh \
	sshd \
	sshd-config \
	ssh-keygen \
	sftp \
	scp \
	start-ssh

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    wifi.supplicant_scan_interval=420 \
    ro.ril.disable.power.collapse=1 \
    pm.sleep_mode=1

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/dictionaries

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/xenonhd/proprietary/common/etc/security/cacerts.bks:system/etc/security/cacerts.bks \
    vendor/xenonhd/proprietary/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/xenonhd/proprietary/common/etc/liberty.cfg:system/etc

# init.d support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.local.rc:root/init.xenonhd.rc \
    vendor/xenonhd/proprietary/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/xenonhd/proprietary/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/xenonhd/proprietary/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/xenonhd/proprietary/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/xenonhd/proprietary/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/xenonhd/proprietary/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/xenonhd/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/xenonhd/proprietary/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/xenonhd/proprietary/common/etc/init.d/11db_vacuum:system/etc/init.d/11db_vacuum \
    vendor/xenonhd/proprietary/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/xenonhd/proprietary/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/xenonhd/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/xenonhd/proprietary/common/bin/sysinit:system/bin/sysinit

# Cron schedual 
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/xenonhd/proprietary/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/xenonhd/proprietary/common/bin/compcache:system/bin/compcache \
    vendor/xenonhd/proprietary/common/bin/handle_compcache:system/bin/handle_compcache

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/xbin/gdb:system/xbin/gdb \
    vendor/xenonhd/proprietary/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/xenonhd/proprietary/common/xbin/hdmi_toggle-720p.sh:system/xbin/hdmi_toggle-720p.sh \
    vendor/xenonhd/proprietary/common/xbin/hdmi_toggle-1080p.sh:system/xbin/hdmi_toggle-1080p.sh \
    vendor/xenonhd/proprietary/common/xbin/himawari-mount-cifs.sh:system/xbin/himawari-mount-cifs.sh \
    vendor/xenonhd/proprietary/common/xbin/himawari-umount-cifs.sh:system/xbin/himawari-umount-cifs.sh \
    vendor/xenonhd/proprietary/common/xbin/openvpn:system/xbin/openvpn \
    vendor/xenonhd/proprietary/common/xbin/market_history:system/xbin/market_history \
    vendor/xenonhd/proprietary/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/xenonhd/proprietary/common/xbin/zip:system/xbin/zip \
    vendor/xenonhd/proprietary/common/xbin/zipalign:system/xbin/zipalign

#Declare your device here for APNs
ifneq ($(filter xenonhd_crespo xenonhd_endeavoru xenonhd_maguro xenonhd_tilapia xenonhd_mako xenonhd_m7 xenonhd_d2att xenonhd_d2tmo xenonhd_galaxysmtd xenonhd_i9100 xenonhd_i9100g xenonhd_i9300 xenonhd_n7000 xenonhd_n7100 xenonhd_t0lte xenonhd_t0lteatt xenonhd_t0ltetmo ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
	vendor/xenonhd/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

ifneq ($(filter xenonhd_d2vzw xenonhd_jfltevzw xenonhd_d2usc xenonhd_xt926 xenonhd_i605 xenonhd_l900 ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
	vendor/xenonhd/proprietary/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml
endif

# T-Mobile theme engine
PRODUCT_PACKAGES += \
	   ThemeManager \
           ThemeChooser \
           com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/xenonhd/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
