#!/bin/bash

if wmctrl -d | grep 5760 > /dev/null; then 
 # dual screen, small 1k to the left top and 2k next to it on the right
 wmctrl -r vim -b remove,maximized_vert,maximized_horz
 wmctrl -r chrome -b remove,maximized_vert,maximized_horz
 wmctrl -r byobu -b remove,maximized_vert,maximized_horz
 wmctrl -r terminal -b remove,maximized_vert,maximized_horz
 wmctrl -r thunderbird -b remove,maximized_vert,maximized_horz
 wmctrl -r terminal -e '1,2620,80,2720,1984'
 wmctrl -r byobu -e '1,2620,80,2720,1984'
 wmctrl -r vim -e '1,2620,80,2710,1984'
 wmctrl -r chrome -e '1,2620,80,2710,1925'
 wmctrl -r thunderbird -t 1
 wmctrl -r thunderbird -e '1,2150,80,3600,1982'
 wmctrl -a terminal 

elif wmctrl -d | grep 3840 > /dev/null; then 
 # using a single 4k screen
 wmctrl -r vim -b remove,maximized_vert,maximized_horz
 wmctrl -r chrome -b remove,maximized_vert,maximized_horz
 wmctrl -r byobu -b remove,maximized_vert,maximized_horz
 wmctrl -r terminal -b remove,maximized_vert,maximized_horz
 wmctrl -r thunderbird -b remove,maximized_vert,maximized_horz
 wmctrl -r terminal -e '1,480,52,2760,2140'
 wmctrl -r byobu -e '1,480,52,2760,2140'
 wmctrl -r vim -e '1,530,95,2663,1969'
 wmctrl -r chrome -e '1,500,80,2710,1925'
 wmctrl -r thunderbird -t 1
 wmctrl -r thunderbird -e '1,170,80,3600,1982'
 wmctrl -a terminal 

else
 # using a 1k screen only
 wmctrl  -r vim -b add,maximized_vert,maximized_horz
 wmctrl  -r chrome -b add,maximized_vert,maximized_horz
 wmctrl  -r byobu -b add,maximized_vert,maximized_horz
 wmctrl  -r terminal -b add,maximized_vert,maximized_horz
 wmctrl  -r thunderbird -b add,maximized_vert,maximized_horz
 wmctrl -r thunderbird -t 1
fi
