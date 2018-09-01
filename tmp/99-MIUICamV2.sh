#!/sbin/sh
# 
# /system/addon.d/99-dirty.sh
# /system is formatted and reinstalled, then thes files are restored.
#

. /tmp/backuptool.functions

list_files() {
#cat <<EOF
#EOF
cat list_files
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
