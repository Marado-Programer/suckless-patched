#!/bin/sh
# Show current volume on Master
vol="$(amixer get Master -M | grep -o "[0-9]*%" | sed 's/%//')"
if [ "$vol" -ge 67 ] ; then
	volSymbol=" "
elif [ "$vol" -ge 33 ] ; then
	volSymbol=" "
elif [ "$vol" -ge 1 ] ; then
	volSymbol=" "
else
	volSymbol=" "
fi
amixer get Master | grep -o "[0-9]*%\|\[on\]\|\[off\]" | sed "s/\[on\]/$volSymbol/;s/\[off\]/ /" | tr -d "\n"
