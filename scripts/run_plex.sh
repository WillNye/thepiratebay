#!/usr/bin/env bash


# Helpful links
# https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
# https://hub.docker.com/r/plexinc/pms-docker/
# https://www.plex.tv/claim/


docker container run -d --name plex \
    -p 32400:32400/tcp \
    -p 3005:3005/tcp \
    -p 8324:8324/tcp \
    -p 32469:32469/tcp \
    -p 1900:1900/udp \
    -p 32410:32410/udp \
    -p 32412:32412/udp \
    -p 32413:32413/udp \
    -p 32414:32414/udp \
    -e TZ="America/Chicago" \
    -e PLEX_CLAIM="<CLAIM-TOKEN>" \
    -v plexDatabase:/config \
    -v plexTranscode:/transcode \
    -v plexMedia:/data \
    plexinc/pms-docker
