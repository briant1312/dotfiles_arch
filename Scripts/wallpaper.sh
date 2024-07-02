#! /bin/bash

file=$(ls ~/Pictures/wallpaper | shuf | head -n 1)

feh --bg-fill "/home/brian/Pictures/wallpaper/$file"
