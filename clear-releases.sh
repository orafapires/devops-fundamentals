#!/bin/bash

# Clear /var/releases/
find /var/releases/ -mtime +15 -exec rm {} \;
