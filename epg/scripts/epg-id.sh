#!/bin/bash

cd /home/runner/work/TV-EPG/TV-EPG/iptv-org-epg && npm install

# Indihome TV EPG

npm run grab -- --site=indihometv.com --output=../epg/id-indihometv.xml --days=3 --maxConnections=10

# Vision Plus EPG

npm run grab -- --site=visionplus.id --output=../epg/id-visionplus.xml --days=5 --maxConnections=10

# Vidio EPG

npm run grab -- --site=vidio.com --output=../epg/id-vidio.xml --days=5 --maxConnections=10

# Cubmu EPG

npm run grab -- --site=cubmu.com --output=../epg/id-cubmu.xml --days=5 --maxConnections=10

# Dens TV EPG

npm run grab -- --site=dens.tv --output=../epg/id-denstv.xml --days=5 --maxConnections=10

# Compress EPG xml files
cd ../epg/

gzip -k -f -9 ../epg/id*.xml

# Remove EPG xml files

# rm ../epg/id*.xml

exit 0
