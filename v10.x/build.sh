#!/bin/sh

export NODE_VERSION=10.16.0

docker build --build-arg NODE_VERSION -t node-provided-lambda-v10.x .
docker run --rm node-provided-lambda-v10.x cat /tmp/node-v${NODE_VERSION}.zip > ./layer.zip
