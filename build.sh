#!/bin/bash

source .env

# Build Docker image
echo "docker image build ${BUILD_OPTS} -t ${REGISTRY}${IMAGE}${TAG} ."
docker image build ${BUILD_OPTS} -t ${REGISTRY}${IMAGE}${TAG} .

