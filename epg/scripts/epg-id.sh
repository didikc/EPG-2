#!/bin/bash

cd /home/runner/work/EPG-2/EPG-2/iptv-org-epg && npm install

# Maxstream EPG
npm run grab -- --source=maxstream.tv --output=../epg/id-maxstreamtv.xml --days=3

# Cubmu EPG
npm run grab -- --source=cubmu.com --lang=id --output=../epg/id-cubmu.xml --days=3

# Dens TV EPG
npm run grab -- --source=dens.tv --output=../epg/id-denstv.xml --days=3

# Vision Plus EPG
npm run grab -- --source=visionplus.id --output=../epg/id-visionplus.xml --days=3

# Vidio EPG
npm run grab -- --source=vidio.com --output=../epg/id-vidio.xml --days=3

# Firstmedia EPG
npm run grab -- --source=firstmedia.com --output=../epg/id-firstmedia.xml --days=3

# Pix EPG (channels-based, no site)
npm run grab -- --channels=../epg/scripts/pix.xml --output=../epg/pix.xml --days=3

# Compress EPG xml files
cd ../epg/

# gzip -k -f -9 ../epg/id*.xml
gzip -k -f -9 ../epg/pix.xml

# Remove EPG xml files

# rm ../epg/id*.xml.gz
# rm ../epg/pix.xml

exit 0
