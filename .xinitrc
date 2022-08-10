#!/bin/bash

sxhkd -c ~/.config/sxhkd/sxhkdrc &
dwmblocks &

exec dwm
