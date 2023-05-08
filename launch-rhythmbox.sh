#!/bin/bash

if ! wmctrl -a rhythmbox; then
	rhythmbox
fi
