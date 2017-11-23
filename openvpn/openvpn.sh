#!/bin/bash

OVPN_DATA="$(pwd)/ovpn-data-home"

docker run -v "$OVPN_DATA:/etc/openvpn" --restart=always -d -p 1194:1194/udp --cap-add=NET_ADMIN giggio/openvpn-arm

exit 0
