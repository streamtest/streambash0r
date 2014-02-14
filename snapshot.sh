#!/bin/bash
#
# author: willwh <me@willwh.com>
#
###

# Set our stream URL
STREAM1=rtmp://localhost/application/stream

# Use avconv to fetch a single video frame from our stream
avconv -i $STREAM1 -vframes 1 /tmp/stream.jpg

# Check if the last command we ran was successful
if [ $? -eq 0 ]
then
logger -s "Success!"

# Else - delete the snapshot so we 404 on request
else
logger -s "Stream offline, deleting snapshot..."
rm stream.jpg
fi
