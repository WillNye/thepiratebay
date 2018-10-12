#!/usr/bin/env bash

docker rm -f pirateBay
docker container run \
        -e "BASE_URL=https://thepiratebay.bid/" \
        -p 5000:5000 \
        -v transmissionState:/root/.config/transmission/resume \
        -v plexMedia:/media/plex \
        --name pirateBay pirate-bay
