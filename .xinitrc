#!/bin/bash

pkill dwmblocks
dwmblocks &

/home/dwarf/.scripts/start_transmission_qt.sh &
telegram-desktop &
#discord &

sxhkd -c ~/.config/sxhkd/sxhkdrc &

exec dwm
