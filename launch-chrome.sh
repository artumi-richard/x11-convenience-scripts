#!/bin/bash

if ! wmctrl -a chrome; then
	google-chrome
fi
