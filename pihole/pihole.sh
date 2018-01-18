#!/bin/bash

IP_LOOKUP="$(ip route get 8.8.8.8 | awk '{ print $NF; exit }')"  # May not work for VPN / tun0
IP="${IP:-$IP_LOOKUP}"  # use $IP, if set, otherwise IP_LOOKUP
#IPv6="${IPv6:-$IPv6_LOOKUP}"  # use $IPv6, if set, otherwise IP_LOOKUP
DOCKER_CONFIGS="$(pwd)"  # Default of directory you run this from, update to where ever.

docker run -d \
    --name pihole \
    -v "${DOCKER_CONFIGS}/pihole/:/etc/pihole/" \
    -v "${DOCKER_CONFIGS}/dnsmasq.d/:/etc/dnsmasq.d/" \
    -e WEB_PORT="8181" \
    -e DNSMASQ_LISTENING=all \
    -e ServerIP="${IP}" \
    --restart=always \
    --net host \
    --cap-add=NET_ADMIN \
    diginc/pi-hole-multiarch:debian_armhf

#docker exec -it pihole pihole -up

exit 0

