#!/bin/bash
shopt -s nullglob
REPO="verify-build"
for path in */ ; do
    [ -d "${path}" ]           || continue # Skip if it's not a directory
    [ -f "${path}/Dockerfile" ] || continue # ...or if there's no Dockerfile
    REPO="$DOCKER_HUB_USR/$(basename "${path}")"
    cd "${path}/"
    ls
    if [ $REPO == "govukverify/java8" ]; then echo "matches"; fi
    docker build -t $REPO:$TAG -f Dockerfile
    docker login -u $DOCKER_HUB_USR -p $DOCKER_HUB_PSW
    docker push $REPO:$TAG
    cd ..
done
