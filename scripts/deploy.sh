#!/bin/bash

IMAGE=${1}
TAG=${2}
PASS=${3}

scp -i /tmp/remote-key ./publish/docker-compose.yml remote_user@remote_host:/tmp/docker-compose.yml
scp -i /tmp/remote-key ./publish/publish.sh remote_user@remote_host:/tmp/publish.sh
ssh -i /tmp/remote-key remote_user@remote_host "/tmp/publish.sh ${IMAGE} ${TAG} ${PASS}"