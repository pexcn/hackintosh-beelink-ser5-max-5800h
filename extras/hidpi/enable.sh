#!/bin/sh

VID=5e3
PID=2400

mkdir -p /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/
curl https://github.com/pexcn/hackintosh-beelink-ser5-max-5800h/raw/master/extras/hidpi/1188p-1080p/DisplayVendorID-${VID}/DisplayProductID-${PID} \
  -L -O --output-dir /Library/Displays/Contents/Resources/Overrides/DisplayVendorID-${VID}/

defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
