#!/bin/bash

docker run -d --name haproxy -p 9000:9000 \
  -p 80:80 -p 443:443 \
  -v $(pwd)/haproxy:/usr/local/etc/haproxy:ro \
  --restart=always \
  kdarker/arm-haproxy-base

exit 0
