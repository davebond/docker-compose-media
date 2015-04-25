#!/bin/bash
# Print version
echo "NZBGET Version: $VERSION"
# Exit on non zero
set -e
# Copy config file if not found
[ ! -f /config/nzbget.conf ] && cp /usr/share/nzbget/webui/nzbget.conf /config/nzbget.conf
# Start NZBGET
nzbget --configfile /config/nzbget.conf --daemon