#!/bin/bash

docker run -it --rm  \
  -v $(pwd)/haproxy:/usr/local/etc/haproxy:ro \
  kdarker/arm-haproxy-base \
  haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg

exit 0
