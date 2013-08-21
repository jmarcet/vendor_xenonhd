#!/system/bin/sh

for i in hdtv movies music sabnzbd transmission videos vdr xbmc; do
  /system/xbin/busybox umount /sdcard/cifs/${i}
done
