#!/bin/bash

if ! wmctrl -a gvim; then
	gvim
fi
