#!/bin/sh -eu

iptables --table nat --append PREROUTING --protocol udp \
	--destination-port 10000:60000 --jump DNAT --to-destination :1000

exec hysteria "$@"
