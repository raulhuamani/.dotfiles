#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Configuracion para Monitor 1: LVDS-0
# xrandr -q | grep " connected" | cut -d ' ' -f1
## Left bar
polybar logo -c ~/.config/polybar/current.ini &
polybar secondary -c ~/.config/polybar/current.ini &
polybar terciary -c ~/.config/polybar/current.ini &
## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &
## Right bar
polybar top -c ~/.config/polybar/current.ini &
polybar close -c ~/.config/polybar/current.ini &

if [ `xrandr | grep HDMI | grep -c ' connected '` -eq 1 ]; then
#if [ `xrandr -q | grep -c 'HDMI-0 connected'` -eq 1 ]; then
#if [ `xrandr -q | grep -c '^HDMI.*connected'` -eq 1 ]; then
    ## Configuracion para Monitor 1: HDMI-0
    ## Left bar
    polybar logo -c ~/.config/polybar/current-hdmi.ini &
    polybar secondary -c ~/.config/polybar/current-hdmi.ini &
    polybar terciary -c ~/.config/polybar/current-hdmi.ini &

    ## Center bar
    polybar primary -c ~/.config/polybar/workspace-hdmi.ini &

    ## Right bar
    polybar top -c ~/.config/polybar/current-hdmi.ini &
    polybar close -c ~/.config/polybar/current-hdmi.ini &
fi
