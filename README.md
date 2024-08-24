# Folder Sync to Google Drive

This repository contains a Bash script to automatically sync a local folder to Google Drive using rclone, and it provides desktop notifications using notify-send to inform you when the sync process is complete.

## Prerequisites
Install rclone: Follow the installation instructions from the https://rclone.org/install/.


Install notify-send: 

```bash
  sudo apt-get install libnotify-bin
```
    
## Configuration
Configure rclone with your Google Drive: 

```bash
  rclone config
```

For configuration steps, refer to the official rclone documentation: https://rclone.org/drive/#making-your-own-client-id




## Usage
Run the Script:
```bash
  ./sync_notes_gdrive.sh 
```
  
Replace /path/to/sync_notes_gdrive.sh with the full path to your script.
 Modify the sync_notes_gdrive.sh script with your local and remote paths.

Open the crontab editor: 
```bash
  crontab -e
```
Add the following line to schedule the script to run every 2 hours:

```bash
  0 */2 * * * /path/to/sync_notes_gdrive.sh
```


## Notes

Ensure that your desktop environment supports notifications for notify-send to work.

Adjust the script paths and cron schedule according to your needs.

echo $DISPLAY & echo $DBUS_SESSION_BUS_ADDRESS - to find your current DISPLAY and DBUS_SESSION_BUS_ADDRESS values. The notify-send command requires access to your graphical session, which is identified by the DISPLAY and DBUS_SESSION_BUS_ADDRESS environment variables.

