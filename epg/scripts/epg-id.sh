#!/bin/bash

cd /home/runner/work/TV-EPG/TV-EPG/iptv-org-epg && npm install

# Indihome TV EPG

npm run grab -- --site=indihometv.com --output=../epg/id-indihometv.xml --days=3 --maxConnections=10

# Vision Plus EPG

npm run grab -- --site=visionplus.id --output=../epg/id-visionplus.xml --days=3 --maxConnections=10

# Vidio EPG

npm run grab -- --site=vidio.com --output=../epg/id-vidio.xml --days=3 --maxConnections=10

# Cubmu EPG

npm run grab -- --site=cubmu.com --output=../epg/id-cubmu.xml --days=3 --maxConnections=10

# Dens TV EPG

npm run grab -- --site=dens.tv --output=../epg/id-denstv.xml --days=3 --maxConnections=10

# Mewatch EPG

npm run grab -- --site=mewatch.sg --output=../epg/sg-mewatch.xml --days=3 --maxConnections=10

# Singtel EPG

npm run grab -- --site=singtel.com --output=../epg/sg-singtel.xml --days=3 --maxConnections=10

# Astro EPG

npm run grab -- --site=content.astro.com.my --output=../epg/my-astro.xml --days=3 --maxConnections=10

# Unifi EPG

npm run grab -- --site=playtv.unifi.com.my --output=../epg/my-unifi.xml --days=3 --maxConnections=10

# RTM EPG

npm run grab -- --site=rtmklik.rtm.gov.my --output=../epg/my-rtm.xml --days=3 --maxConnections=10

# Compress EPG xml files
cd ../epg/

gzip -k -f -9 ../epg/id*.xml
gzip -k -f -9 ../epg/sg*.xml
gzip -k -f -9 ../epg/my*.xml

# Remove EPG xml files

# rm ../epg/id*.xml

exit 0
