#!/bin/sh

#echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig enp2s0 | grep "inet " | awk '{print $2}')%{u-}"
#echo "%{F#2495e7}﬘ %{F#ffffff}$(free -h | grep ^Mem | awk '{ gsub("i","B",$3); gsub("i","B",$2); print $3 "/" $2}')%{u-}"
echo "%{F#2495e7}﬘ %{F#ffffff}$(free -h | grep ^Mem | awk '{ gsub("i","B",$3); print $3}')%{u-}"
