#!/bin/bash
#
# author: willwh <me@willwh.com>
#
# Will publish your entire desktop to an RTMP server using avconv - see avconv man pages for more info on flags
#
###
avconv -f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -i :0.0 -b 300k -r 25 -g 48 -f flv "rtmp://localhost:1935/live/desktop"
