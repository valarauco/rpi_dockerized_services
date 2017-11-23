#!/bin/bash

DOMAIN=valarauco.ddns.net

docker run -d -p 8383:443 -p 8282:80 \
  -v $(pwd)/ncdata:/data --name nextcloud \
  --restart=always \
  ownyourbits/nextcloudpi $DOMAIN

exit 0
