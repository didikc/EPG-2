#!/bin/bash

cd /home/runner/work/EPG-2/EPG-2/iptv-org-epg && npm install

# Indihome TV EPG

npm run grab -- --site=indihometv.com --output=../epg/id-indihometv.xml --days=3 --maxConnections=10

# Cubmu EPG

# npm run grab -- --site=cubmu.com --lang=id --output=../epg/id-cubmu.xml --days=3 --maxConnections=10

# Dens TV EPG

npm run grab -- --site=dens.tv --output=../epg/id-denstv.xml --days=3 --maxConnections=10

# Vision Plus EPG

npm run grab -- --site=visionplus.id --output=../epg/id-visionplus.xml --days=3 --maxConnections=10

# Vidio EPG

# npm run grab -- --site=vidio.com --output=../epg/id-vidio.xml --days=3 --maxConnections=10

# Firstmedia EPG

# npm run grab -- --site=firstmedia.com --output=../epg/id-firstmedia.xml --days=3 --maxConnections=10

# Singtel EPG

# npm run grab -- --site=singtel.com --output=../epg/sg-singtel.xml --days=3 --maxConnections=10

# Pix EPG

npm run grab -- --channels=../epg/scripts/pix.xml --output=../epg/pix.xml --days=3 --maxConnections=10

# Compress EPG xml files
cd ../epg/

# gzip -k -f -9 ../epg/id*.xml
gzip -k -f -9 ../epg/pix.xml
# gzip -k -f -9 ../epg/sg*.xml

# Remove EPG xml files

# rm ../epg/id*.xml.gz
# rm ../epg/sg*.xml.gz
# rm ../epg/pix.xml

exit 0
