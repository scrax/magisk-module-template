#!/sbin/sh
# 
# /system/addon.d/99-dirty.sh
# /system is formatted and reinstalled, then thes files are restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/99-MIUICamV2.sh
etc/device_features/whyred.xml
etc/media_profiles.xml
etc/permissions/android.hardware.camera.full.xml
etc/permissions/android.hardware.camera.raw.xml
etc/permissions/privapp-permissions-MIUIport.xml
etc/permissions/whetstone_permissions.xml
media/audio/ui/camera_click.ogg
media/audio/ui/camera_focus.ogg
media/audio/ui/Effect_Tick.ogg
media/audio/ui/VideoRecord.ogg
media/audio/ui/VideoStop.ogg
priv-app/MiuiCamera/lib/arm64/com.qualcomm.qti.imscmservice@1.0.so
priv-app/MiuiCamera/lib/arm64/com.qualcomm.qti.imscmservice@1.1.so
priv-app/MiuiCamera/lib/arm64/lib-imscamera.so
priv-app/MiuiCamera/lib/arm64/lib-imsvideocodec.so
priv-app/MiuiCamera/lib/arm64/lib-imsvt.so
priv-app/MiuiCamera/lib/arm64/lib-imsvtextutils.so
priv-app/MiuiCamera/lib/arm64/lib-imsvtutils.so
priv-app/MiuiCamera/lib/arm64/libblurbuster.so
priv-app/MiuiCamera/lib/arm64/libcamera2ndk.so
priv-app/MiuiCamera/lib/arm64/libcamera_metadata.so
priv-app/MiuiCamera/lib/arm64/libCameraEffectJNI.so
priv-app/MiuiCamera/lib/arm64/libcameraservice.so
priv-app/MiuiCamera/lib/arm64/libchromaflash.so
priv-app/MiuiCamera/lib/arm64/libdualcameraddm.so
priv-app/MiuiCamera/lib/arm64/libfilterfw.so
priv-app/MiuiCamera/lib/arm64/libfiltergenerator.so
priv-app/MiuiCamera/lib/arm64/libfilterpack_imageproc.so
priv-app/MiuiCamera/lib/arm64/libhazebuster.so
priv-app/MiuiCamera/lib/arm64/libimscamera_jni.so
priv-app/MiuiCamera/lib/arm64/libimsmedia_jni.so
priv-app/MiuiCamera/lib/arm64/libjni_blurbuster.so
priv-app/MiuiCamera/lib/arm64/libjni_chromaflash.so
priv-app/MiuiCamera/lib/arm64/libjni_dualcamera.so
priv-app/MiuiCamera/lib/arm64/libjni_filtergenerator.so
priv-app/MiuiCamera/lib/arm64/libjni_hazebuster.so
priv-app/MiuiCamera/lib/arm64/libjni_load_serinum.so
priv-app/MiuiCamera/lib/arm64/libjni_makeupV2.so
priv-app/MiuiCamera/lib/arm64/libjni_optizoom.so
priv-app/MiuiCamera/lib/arm64/libjni_panorama.so
priv-app/MiuiCamera/lib/arm64/libjni_resource_drm.so
priv-app/MiuiCamera/lib/arm64/libjni_seestraight.so
priv-app/MiuiCamera/lib/arm64/libjni_sharpshooter.so
priv-app/MiuiCamera/lib/arm64/libjni_stillmore.so
priv-app/MiuiCamera/lib/arm64/libjni_trackingfocus.so
priv-app/MiuiCamera/lib/arm64/libjni_trueportrait.so
priv-app/MiuiCamera/lib/arm64/libjni_truescanner_v2.so
priv-app/MiuiCamera/lib/arm64/libjni_ubifocus.so
priv-app/MiuiCamera/lib/arm64/libmiuiimageutilities.so
priv-app/MiuiCamera/lib/arm64/libmmcamera_faceproc.so
priv-app/MiuiCamera/lib/arm64/libmmcamera_faceproc2.so
priv-app/MiuiCamera/lib/arm64/libmorpho_group_portrait.so
priv-app/MiuiCamera/lib/arm64/libmorpho_groupshot.so
priv-app/MiuiCamera/lib/arm64/libmorpho_memory_allocator.so
priv-app/MiuiCamera/lib/arm64/libmorpho_panorama.so
priv-app/MiuiCamera/lib/arm64/libmorpho_panorama_gp.so
priv-app/MiuiCamera/lib/arm64/liboptizoom.so
priv-app/MiuiCamera/lib/arm64/libscveBlobDescriptor.so
priv-app/MiuiCamera/lib/arm64/libscveBlobDescriptor_stub.so
priv-app/MiuiCamera/lib/arm64/libscveCommon.so
priv-app/MiuiCamera/lib/arm64/libscveCommon_stub.so
priv-app/MiuiCamera/lib/arm64/libscveFaceLandmarks.so
priv-app/MiuiCamera/lib/arm64/libscveFaceLandmarks_stub.so
priv-app/MiuiCamera/lib/arm64/libscveFaceRecognition.so
priv-app/MiuiCamera/lib/arm64/libscveImageCorrection.so
priv-app/MiuiCamera/lib/arm64/libscveObjectSegmentation.so
priv-app/MiuiCamera/lib/arm64/libscveObjectTracker.so
priv-app/MiuiCamera/lib/arm64/libscveObjectTracker_stub.so
priv-app/MiuiCamera/lib/arm64/libscvePanorama.so
priv-app/MiuiCamera/lib/arm64/libscvePanorama_lite.so
priv-app/MiuiCamera/lib/arm64/libseestraight.so
priv-app/MiuiCamera/lib/arm64/libtrueportrait.so
priv-app/MiuiCamera/lib/arm64/libtruescanner.so
priv-app/MiuiCamera/lib/arm64/libts_detected_face_jni.so
priv-app/MiuiCamera/lib/arm64/libts_face_beautify_hal.so
priv-app/MiuiCamera/lib/arm64/libts_face_beautify_jni.so
priv-app/MiuiCamera/lib/arm64/libubifocus.so
priv-app/MiuiCamera/lib/arm64/libvip_channel.so
priv-app/MiuiCamera/lib/arm64/libvip_channel_iface.so
priv-app/MiuiCamera/lib/arm64/libwhetstone_jni.so
priv-app/MiuiCamera/lib/arm64/libwhetstone_sdk.so
priv-app/MiuiCamera/lib/arm64/libxl_stat.so
priv-app/MiuiCamera/lib/arm64/libxl_thunder_iface.so
priv-app/MiuiCamera/lib/arm64/libxl_thunder_sdk.so
priv-app/MiuiCamera/lib/arm64/libXMFD_FaceDetect.so
priv-app/MiuiCamera/lib/arm64/libxt_native.so
priv-app/MiuiCamera/lib/arm64/vendor.qti.hardware.camera.device@1.0.so
priv-app/MiuiCamera/MiuiCamera.apk
priv-app/MiuiCamera/oat/arm64/MiuiCamera.odex
priv-app/MiuiCamera/oat/arm64/MiuiCamera.vdex
usr/keylayout/uinput-fpc.kl
usr/keylayout/uinput-goodix.kl
vendor/etc/acdbdata/adsp_avs_config.acdb
vendor/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb
vendor/etc/acdbdata/MTP/MTP_General_cal.acdb
vendor/etc/acdbdata/MTP/MTP_Global_cal.acdb
vendor/etc/acdbdata/MTP/MTP_Handset_cal.acdb
vendor/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb
vendor/etc/acdbdata/MTP/MTP_Headset_cal.acdb
vendor/etc/acdbdata/MTP/MTP_Speaker_cal.acdb
vendor/etc/acdbdata/MTP/MTP_workspaceFile.qwsp
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Bluetooth_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Codec_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_General_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Global_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Handset_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Hdmi_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Headset_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_Speaker_cal.acdb
vendor/etc/acdbdata/MTP/sdm660-tavil-snd-card/MTP_WCD9340_workspaceFile.qwsp
vendor/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb
vendor/etc/acdbdata/QRD/QRD_General_cal.acdb
vendor/etc/acdbdata/QRD/QRD_Global_cal.acdb
vendor/etc/acdbdata/QRD/QRD_Handset_cal.acdb
vendor/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb
vendor/etc/acdbdata/QRD/QRD_Headset_cal.acdb
vendor/etc/acdbdata/QRD/QRD_Speaker_cal.acdb
vendor/etc/acdbdata/QRD/QRD_workspaceFile.qwsp
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Bluetooth_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_General_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Global_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Handset_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Hdmi_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Headset_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_Speaker_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-snd-card-skush/QRD_SKUSH_workspaceFile.qwsp
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Bluetooth_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_General_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Global_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Handset_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Hdmi_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Headset_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_Speaker_cal.acdb
vendor/etc/acdbdata/QRD/sdm660-tasha-skus-snd-card/QRD_SKUS_workspaceFile.qwsp
vendor/etc/audio_platform_info.xml
vendor/etc/camera/age_gender_bg
vendor/etc/camera/camera_config.xml
vendor/etc/camera/crown_156_128.bin
vendor/etc/camera/csidtg_camera.xml
vendor/etc/camera/csidtg_chromatix.xml
vendor/etc/camera/dualcamera.png
vendor/etc/camera/dualcamera_in.png
vendor/etc/camera/face_goodly_208_180
vendor/etc/camera/face_ravishing_238_224
vendor/etc/camera/face_splendid_274_200
vendor/etc/camera/female_bg.png
vendor/etc/camera/female_icon.png
vendor/etc/camera/lf_facerank_model.bin
vendor/etc/camera/male_bg.png
vendor/etc/camera/male_icon.png
vendor/etc/camera/Miui-Light.ttf
vendor/etc/camera/MIUI_Time.ttf
vendor/etc/camera/model_zm.dlc
vendor/etc/camera/morpho_lowlight4.0.xml
vendor/etc/camera/people_gender.dat
vendor/etc/camera/score_bg.png
vendor/etc/camera/score_icon.png
vendor/etc/camera/sdm_ys_32p_120_21_5_perturb50.bin
vendor/etc/camera/watermark_font_2300_3199.dat
vendor/etc/camera/whyred_imx376_ofilm_global_i_chromatix.xml
vendor/etc/camera/whyred_imx376_sunny_global_ii_chromatix.xml
vendor/etc/camera/whyred_imx486_ofilm_global_i_chromatix.xml
vendor/etc/camera/whyred_imx486_qtech_global_ii_chromatix.xml
vendor/etc/camera/whyred_ov13855_sunny_cn_i_chromatix.xml
vendor/etc/camera/whyred_s5k2l7_ofilm_cn_i_chromatix.xml
vendor/etc/camera/whyred_s5k2l7_qtech_cn_ii_chromatix.xml
vendor/etc/camera/whyred_s5k3l8_ofilm_cn_ii_chromatix.xml
vendor/etc/camera/whyred_s5k5e8_ofilm_cn_i_chromatix.xml
vendor/etc/camera/whyred_s5k5e8_ofilm_global_i_chromatix.xml
vendor/etc/camera/whyred_s5k5e8_qtech_cn_ii_chromatix.xml
vendor/etc/camera/whyred_s5k5e8_qtech_global_ii_chromatix.xml
vendor/etc/camera/yuv_test.xml
vendor/etc/media_profiles_V1_0.xml
vendor/etc/media_profiles_vendor.xml
vendor/etc/mixer_paths.xml
vendor/etc/mixer_paths_i2s.xml
vendor/etc/mixer_paths_mtp.xml
vendor/etc/mixer_paths_skus.xml
vendor/etc/mixer_paths_skush.xml
vendor/etc/mixer_paths_wcd9326.xml
vendor/etc/mixer_paths_wcd9335.xml
vendor/etc/mixer_paths_wcd9340.xml
vendor/etc/scve/facereco/gModel.dat
vendor/lib/hw/audio.primary.sdm660.so
vendor/lib64/hw/audio.primary.sdm660.so
vendor/usr/keylayout/uinput-fpc.kl
vendor/usr/keylayout/uinput-goodix.kl
EOF
#cat list_files
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
		;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    bash vendor_build_prop_tweaks.sh
  ;;
esac