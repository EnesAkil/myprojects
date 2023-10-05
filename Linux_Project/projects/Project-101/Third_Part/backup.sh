#!/bin/bash

# Check if we are root privilage or not
if [[ $UID -ne 0 ]]; then
    echo "Please run this script with sudo"
    exit 1
fi
# Define the backup directory
backup_files="/home /ec2-user/data /etc /boot /usr"
# Define the directories to be backed up
dest="/mnt/backup"
# Get the hostname of the instance
hostname=$(hostname -s)
# Get the current date and time
time=$(date +"%Y_%m_%d_%I_%M_%p")
archive_file="$hostname-$time"
# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
# Create the backup directory if it doesn't exist
tar czf $dest/$archive_file $backup_files

# Iterate through the directories to be backed up

# Or if you have only one directory that you know.

# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.

# Print end status message.
echo
echo "Backup finished"
date
ls -lh $dest