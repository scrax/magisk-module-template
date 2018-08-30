#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
resetprop ro.vendor.audio.sdk.fluencetype none;

dir="/system/media/audio/ui/";
for name in audio_fix;
  do
    if [ -f $dir$name.bak ];
      then
        mv $dir$name.bak $dir$name
      else
        mv $dir$name $dir$name.bak
    fi
done