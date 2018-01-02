#!/bin/bash
shopt -s nullglob
env
REPO="verify-build"
TAG="${BUILD_NUMBER}"
for path in */ ; do
    [ -d "${path}" ]            || continue # Skip if it's not a directory
    [ -f "${path}/Dockerfile" ] || continue # ...or if there's no Dockerfile
    REPO="$DOCKER_HUB_USR/$(basename "${path}")"
    cd "${path}/"
    docker build -t $REPO:$TAG -f Dockerfile .
    docker login -u $DOCKER_HUB_USR -p $DOCKER_HUB_PSW
    if [ ${BRANCH_NAME} == "master" ]; then
        docker tag $REPO:$TAG $REPO:latest
        docker push $REPO:latest;
    fi
    docker push $REPO:$TAG
    cd ..
done
