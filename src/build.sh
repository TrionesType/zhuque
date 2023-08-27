#!/bin/bash
set -e

mkdir -p ../fonts
fontmake \
  -g ./ZhuqueFangsong.glyphspackage \
  -o ttf \
  --output-dir ../fonts/