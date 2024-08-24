#!/bin/bash

LOCAL_DIR=/home/username/Desktop/Notes   #Replace /home/username/Desktop/Notes with the path to your local directory.
REMOTE_DIR=remote:sync_notes             #Replace remote:sync_notes with your configured remote path.

#sync local files to drive
rclone sync "$LOCAL_DIR" "$REMOTE_DIR"

#send notifications with environment variables
DISPLAY=:0
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export DISPLAY DBUS_SESSION_BUS_ADDRESS

#send notifications
notify-send "Sync Complete" "Your files have been synched."
