#!/bin/bash

# keep backup with latest 30 days
find /var/backup/backup_* -mtime +30 -delete
