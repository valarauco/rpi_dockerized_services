#!/bin/bash

CLIENT=$1
OVPN_DATA="$(pwd)/ovpn-data-home"

docker run --rm -it -v "$OVPN_DATA:/etc/openvpn" giggio/openvpn-arm ovpn_revokeclient $CLIENT remove

exit 0
