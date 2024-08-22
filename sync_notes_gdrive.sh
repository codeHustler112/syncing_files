#!/bin/bash

LOCAL_DIR=/home/username/Desktop/Notes   #Replace /home/username/Desktop/Notes with the path to your local directory.
REMOTE_DIR=remote:sync_notes             #Replace remote:sync_notes with your configured remote path.

#sync local files to drive
rclone sync "$LOCAL_DIR" "$REMOTE_DIR"

#send notifications
notify-send "Sync Complete" "Your files have been synched."
