#!/bin/bash

# Configuration
backup_dir="/backup"        # Directory where backups will be stored
app_dir="/usr/local/src/php"     # Directory of your PHP application
backup_filename="backup_$(date +'%Y-%m-%d_%H%M%S').tar.gz"  # Backup filename with timestamp

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create a compressed tarball of the PHP application directory
tar -czf "$backup_dir/$backup_filename" -C "$app_dir" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully: $backup_filename"
else
    echo "Backup failed!"
fi

# Clean up old backups (keep the latest 5)
cd "$backup_dir" || exit
ls -t | tail -n +6 | xargs -I {} rm -- {}
