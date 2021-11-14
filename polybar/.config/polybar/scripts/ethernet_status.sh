#!/bin/sh

# echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig enp2s0 | grep "inet " | awk '{print $2}')%{u-}"

#IFACE=$(/usr/sbin/ifconfig | grep enp2s0 | awk '{print $1}' | tr -d ':')
IFACE=$(/usr/sbin/ifconfig enp2s0 | grep "inet " | awk '{print $1}')
if [ "$IFACE" = "inet" ]; then
	echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig enp2s0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{F#2495e7}%{u-} Disconnected"
fi

