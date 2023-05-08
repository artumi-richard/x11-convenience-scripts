#!/bin/bash

if ! wmctrl -a thunderbird; then
	thunderbird
fi
