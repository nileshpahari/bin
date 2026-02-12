#!/usr/bin/env bash

kitty --class clipvim sh -c "wl-paste | nvim -"
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
