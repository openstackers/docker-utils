#!/bin/bash

echo "Entering container: $1"
PID=$(docker inspect --format {{.State.Pid}} $1)
nsenter --target $PID --mount --uts --ipc --net --pid

