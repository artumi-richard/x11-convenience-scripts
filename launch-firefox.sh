#!/bin/bash

if ! wmctrl -a firefox; then
	firefox
fi
