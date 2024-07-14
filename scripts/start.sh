#!/bin/bash
docker run -d \
    --name emby \
    --gpus all \
    --volume /emby/config:/config \
    --volume /media/evan/my_stuff:/mnt \
    --net=host \
    --publish 8096:8096 \
    --publish 8920:8920 \
    emby/embyserver:latest