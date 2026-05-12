#!/bin/bash

set -e

cd /home/runner/work/EPG-2/EPG-2/iptv-org-epg && npm install

run_if_exists () {
  SITE=$1
  OUTPUT=$2

  if [ -f "sites/$SITE/channels.xml" ]; then
    echo "✅ Running $SITE"
    npm run grab -- --channels=sites/$SITE/channels.xml --output=$OUTPUT --days=3
  else
    echo "⚠️ Skipping $SITE (not found)"
  fi
}

run_if_exists "maxstream.tv" "../epg/id-maxstreamtv.xml"
run_if_exists "vidio.com" "../epg/id-vidio.xml"
run_if_exists "visionplus.id" "../epg/id-visionplus.xml"
run_if_exists "dens.tv" "../epg/id-denstv.xml"
run_if_exists "mncvision.id" "../epg/id-mncvision.xml"
run_if_exists "useetv.com" "../epg/id-useetv.xml"

# Custom PIX
npm run grab -- --channels=../epg/scripts/pix.xml --output=../epg/pix.xml --days=3

# Compress EPG xml files
cd ../epg/

# gzip -k -f -9 ../epg/id*.xml
gzip -k -f -9 ../epg/pix.xml

# Remove EPG xml files

# rm ../epg/id*.xml.gz
# rm ../epg/pix.xml

exit 0
