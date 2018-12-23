#!/bin/bash

if [ -z "$DISPLAY" ]; then
    Xvfb :10 -ac -screen 0 1024x768x24 &
    export DISPLAY=:10
fi

/usr/bin/time -v skychart --nosplash --deamon
