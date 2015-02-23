#!/bin/bash

ID=$(docker inspect --format {{.Id}} $1)
ip netns exec $ID $2

