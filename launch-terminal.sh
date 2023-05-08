#!/bin/bash

if ! wmctrl -a Terminal; then
	if ! wmctrl -a byobu; then
		gnome-terminal
	fi
fi
