#!/bin/sh

MODULATE="${1:-100,100,50}"
COLORSPACE="${2:-HCLp}"
FILENAME="Monterey-Graphic-${MODULATE}-${COLORSPACE}.heic"
OUTPUT="${3:-$FILENAME}"

mkdir -p build

magick "/System/Library/Desktop Pictures/Monterey Graphic.heic" \
 -modulate ${MODULATE} -set option:modulate:colorspace ${COLORSPACE} "build/monterey-graphic.png"

wallpapper -i "monterey-graphic.json"

rm build/monterey-graphic-*.png

mv output.heic ${OUTPUT}
