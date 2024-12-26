#!/bin/bash

log_path="/var/log"
archive_directory="archive_logs"

if [ ! -d "$archive_directory" ]; then
    mkdir "$archive_directory"
    echo "Created archive directory: $archive_directory"
fi

timestamp="$( date +"%y_%m_%d-%H:%M:%S")"
filename="log_${timestamp}.tar.gz"
archive_path="${archive_directory}/${filename}"

echo "Archiving log files..."
echo "[wait.......]"

sudo tar -czf "$archive_path" -C "$log_path" .

echo "[archive finished...]"
