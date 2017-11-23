#!/bin/bash

OVPN_DATA="$(pwd)/ovpn-data-home"

docker run -v "$OVPN_DATA:/etc/openvpn" --rm giggio/openvpn-arm ovpn_genconfig -u udp://my.domain
docker run -v "$OVPN_DATA:/etc/openvpn" --rm -it giggio/openvpn-arm ovpn_initpki

exit 0
