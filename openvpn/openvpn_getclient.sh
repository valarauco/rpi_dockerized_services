#!/bin/bash

CLIENTNAME=$1
OVPN_DATA="$(pwd)/ovpn-data-home"

docker run -v "$OVPN_DATA:/etc/openvpn" --rm -it giggio/openvpn-arm easyrsa build-client-full $CLIENTNAME nopass
docker run -v "$OVPN_DATA:/etc/openvpn" --rm giggio/openvpn-arm ovpn_getclient $CLIENTNAME > ${CLIENTNAME}.ovpn

exit 0
