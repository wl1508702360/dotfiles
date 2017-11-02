#!/bin/bash

# shadowsocks' server binary location
SSSERVER=/usr/local/bin/ssserver

# server configuration file
CONFIG=/etc/shadowsocks/config.json

# if `ssserver` instance does not run, then run it
if [[ `ps -aef | grep ssserver | grep -v ssserver` != 0  ]]; then
  $SSSERVER -c $CONFIG -d start
fi
