#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Configuracion para Monitor 1: LVDS-0
## Left bar
polybar log -c ~/.config/polybar/current.ini &
polybar secondary -c ~/.config/polybar/current.ini &
polybar terciary -c ~/.config/polybar/current.ini &

## Right bar
polybar top -c ~/.config/polybar/current.ini &
polybar primary -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &


## Configuracion para Monitor 1: HDMI-0
## Left bar
polybar log -c ~/.config/polybar/current-hdmi.ini &
polybar secondary -c ~/.config/polybar/current-hdmi.ini &
polybar terciary -c ~/.config/polybar/current-hdmi.ini &

## Right bar
polybar top -c ~/.config/polybar/current-hdmi.ini &
polybar primary -c ~/.config/polybar/current-hdmi.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace-hdmi.ini &
