#!/usr/bin/env bash

sudo echo "Started"
(sleep 10 ; sudo route delete 0/1 && sudo route -n add -net 13.58.123.120 10.8.0.137 && curl http://lumtest.com/myip.json ) &
PATH=$(brew --prefix openvpn)/sbin:$PATH
sudo openvpn --config *.ovpn --askpass *.pass  # --daemon vpn
