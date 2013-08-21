#!/system/xbin/sh

if [ ! -e /data/log ]; then
  ln -s /sdcard/log /data/log
fi

if [ ! -d /sdcard/hdmi_toggle]; then
  mkdir /sdcard/hdmi_toggle
fi

if [ ! -d /sdcard/log ]; then
  mkdir /sdcard/log
fi
