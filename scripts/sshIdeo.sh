#!/bin/bash
echo "Opening vpn into Ideo over PPTP"
pon ideo
while !(ip route | grep ppp* > /dev/null); do
:
done
ip route add 172.16.0.0/16 dev ppp0
