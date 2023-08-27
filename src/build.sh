#!/bin/bash
set -e

mkdir -p ../fonts
# awk -F= '/versionMinor/ {gsub(/[; ]/,"",$2); minor=$2} /versionMajor/ {gsub(/[; ]/,"",$2); major=$2} END {printf "%s.%s\n", major, minor}' ../src/ZhuqueFangsong.glyphspackage/fontinfo.plist > ../fonts/version.txt
fontmake \
  -g ./ZhuqueFangsong.glyphspackage \
  -o ttf \
  --output-dir ../fonts/