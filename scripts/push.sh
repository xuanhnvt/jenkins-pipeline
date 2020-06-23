#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE=${1}
BUILD_ID=${2}
PASS=${3}

echo "** Logging in ***"
docker login -u xuanhnvt -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_ID xuanhnvt/$IMAGE:$BUILD_ID
echo "*** Pushing image ***"
docker push xuanhnvt/$IMAGE:$BUILD_ID