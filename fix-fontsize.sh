#!/bin/bash
if wmctrl -d | grep 3840 > /dev/null; then
#	gsettings set org.gnome.desktop.interface text-scaling-factor 1.38
	gsettings set org.gnome.desktop.interface text-scaling-factor 0.9
else
	gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
fi

