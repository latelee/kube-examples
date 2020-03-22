#!/bin/bash

docker push latelee/led-light-mapper-x86:v1.1
docker push latelee/led-light-mapper-arm:v1.1

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create latelee/led-light-mapper:v1.1 latelee/led-light-mapper-x86:v1.1 latelee/led-light-mapper-arm:v1.1

docker manifest annotate latelee/led-light-mapper:v1.1 latelee/led-light-mapper-x86:v1.1 --os linux --arch x86_64
docker manifest annotate latelee/led-light-mapper:v1.1 latelee/led-light-mapper-arm:v1.1 --os linux --arch armv7l

docker manifest push latelee/led-light-mapper:v1.1
