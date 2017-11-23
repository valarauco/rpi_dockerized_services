#!/bin/bash

OVPN_DATA="$(pwd)/ovpn-data-home"

docker run --rm -it -v "$OVPN_DATA:/etc/openvpn" giggio/openvpn-arm ovpn_listclients

exit 0
