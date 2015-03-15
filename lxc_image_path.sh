#!/bin/bash
#Prints the container path

BASEPATH="/var/lib/docker/devicemapper/mnt"
STATUS=$(docker inspect --format {{.State.Running}} $1 2>&1)

case "${STATUS}" in
    'false')
        echo "$1 container is not runinng"
        exit
        ;;
    'Error:'*)
	echo ${STATUS}
        exit
esac

ID=$(docker inspect --format {{.Id}} $1)
echo "Image path: $BASEPATH/$ID/rootfs/"
