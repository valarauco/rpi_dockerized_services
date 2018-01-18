#!/bin/bash

#To enable aria2 for ocDownload   
docker exec -it nextcloud apt-get update
docker exec -it nextcloud apt-get install aria2 curl libcurl3=7.38.0-4+deb8u8 php-curl
docker exec -it nextcloud touch /var/log/aria2.log /var/local/aria2c.sess
docker exec -it nextcloud chown www-data:www-data /var/log/aria2.log /var/local/aria2c.sess
docker exec -it nextcloud sudo -u www-data aria2c --enable-rpc --rpc-allow-origin-all -c -D --log=/var/log/aria2.log --check-certificate=false --save-session=/var/local/aria2c.sess --save-session-interval=2 --continue=true --input-file=/var/local/aria2c.sess --rpc-save-upload-metadata=true --force-save=true --log-level=warn

exit 0
