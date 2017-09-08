#!/bin/bash

###
# create de container
###
docker build -t firefox .

# set variables
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

###
# run the container
###
docker run -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTH firefox
