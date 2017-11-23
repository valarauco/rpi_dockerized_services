#!/bin/bash

[[ -z "$1" ]] && exit 1

docker exec pihole sudo pihole -a -p $1


exit 0

