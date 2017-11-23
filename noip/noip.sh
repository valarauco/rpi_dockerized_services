#!/bin/bash

docker run --name=noip --restart=always \
  -d -v /etc/localtime:/etc/localtime \
  -v $(pwd)/config:/config cwmyers/rpi-no-ip

exit 0
