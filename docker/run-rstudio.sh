#!/usr/bin/env bash

docker run \
        -d \
        --rm \
        -p 8788:8787 \
        -e USERID=1000 \
        -e DISABLE_AUTH=true \
        --mount type=bind,src=$HOME/src/homework,dst=/home/rstudio/work \
        --mount type=bind,src=$HOME/.ssh,dst=/home/rstudio/.ssh \
	rocker/tidyverse:4.1.0 /init
