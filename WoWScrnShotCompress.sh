#! /bin/bash

d="${WOW_UTILS_PREFIX}/Screenshots"

echo "$d"
for f in "$d"/*.tga; do
  if [ -f "$f" ]; then
    basename "$f"
    ffmpeg -i "$f" -q:v 1 -qmin 1 -hide_banner -loglevel error "${f%.*}.jpg"
    rm "$f"
  fi
done