#!/system/bin/sh

if [ ! -d /mnt/cifs ]; then
  mount -o remount,rw /
  mkdir /mnt/cifs
  busybox chown sdcard_rw:sdcard_rw /mnt/cifs
  mount -o remount,ro /
fi

mount | grep -q 'mnt\/cifs' || mount -t tmpfs -o uid=1015,gid=1015 tmpfs /mnt/cifs

for share in hdtv movies music sabnzbd transmission videos vdr xbmc; do
  [ -d /mnt/cifs/${share} ] || mkdir -p /mnt/cifs/${share}
  /system/xbin/busybox mount -t cifs -o guest,sec=none //192.168.11.3/${share} /mnt/cifs/${share}
done
