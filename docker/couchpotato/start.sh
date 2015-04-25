#! /bin/sh
# Exit on none zero
set -e
# Update couchpotato
git -C /couchpotato pull
# Run
python2.7 /couchpotato/CouchPotato.py --console_log --data_dir=/config --config_file=/config/couchpotato.ini