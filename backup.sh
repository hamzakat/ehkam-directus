#!/bin/bash

# Remove old backup files
rm -f /home/ubuntu/ehkam-backend-*.tar.gz

# Backup the ehkam-backend folder
sudo tar -czvf /home/ubuntu/ehkam-backend-$(date +%Y-%m-%d-%H:%M).tar.gz /home/ubuntu/ehkam-backend

# Copy the backup file to S3 bucket with the current date in the filename
rclone copy /home/ubuntu/ehkam-backend-*.tar.gz storj:ehkam-backend-backup
