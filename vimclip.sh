#!/usr/bin/env bash

# kitty --class vimclip sh -c "wl-paste | nvim +'set buftype=' -"
CLASS="vimclip"

kitty --class "$CLASS" sh -c "wl-paste | nvim -" &

while ! hyprctl clients | grep -q "$CLASS"; do
  sleep 0.01
done

hyprctl dispatch setfloating "class:$CLASS"
hyprctl dispatch centerwindow "class:$CLASS"
# # tmp="/tmp/clip_$$.txt"
# tmp="/tmp/clip"
#
# # Wayland
# wl-paste > "$tmp" 2>/dev/null || \
# # X11 fallback
# xclip -selection clipboard -o > "$tmp"
#
# kitty nvim "$tmp"
#
