#!/system/bin/sh
#
# Script: hdmi_toggle.sh
# Purpose: Toggle the display resolution to reset or match a specific HDMI
#          display target.
#
# This script requires a command line argument:
# The display resolution.
# HDTV:          1920x1080
# PC Monitor:    2560x1440
#
# Command usage:
# hdmi_toggle.sh 1080x1920
#
TOGGLE_PATH=/sdcard/hdmi_toggle
TOGGLE_FILE="${TOGGLE_PATH}/hdmi_state.txt"
#
# NOTE: Be aware that the resolution values are not validated.
RESOLUTION=$1
[ -z "${RESOLUTION}" ] && RESOLUTION=720x1280
#
# Test that the toggle state path exists and has read/write permissions
if [ ! -d "$TOGGLE_PATH" ]; then
    echo "The toggle directory '$TOGGLE_PATH' must exist."
    exit 1
# Make sure the toggle path directory has read/write permissions
elif [ ! -r "$TOGGLE_PATH" ] || [ ! -w "$TOGGLE_PATH" ]; then
    echo "The toggle directory '$TOGGLE_PATH' must have read/write permissions."
    exit 1
fi
#
# Automatically set the toggle state to OFF if the toggle file does not exist
if [ ! -f "$TOGGLE_FILE" ]; then
    echo "OFF" > "$TOGGLE_FILE"
fi
#
# Set the display to the specified resolution or reset
CURRENT_STATE=$(cat $TOGGLE_FILE)
#
echo "current_state ($CURRENT_STATE)"
#
if [ "$CURRENT_STATE" == "ON" ]; then
    # Reset display state
    echo "Reset display"
    am display-size reset
    echo "OFF" > "$TOGGLE_FILE"
else
    # Set display state
    echo "Set display resolution to $RESOLUTION"
    am display-size $RESOLUTION
    echo "ON" > "$TOGGLE_FILE"
fi
#
exit 0
