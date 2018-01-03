#!/bin/bash

for REPO_NAME in $REPO_NAMES; do
    fab -H $PACKAGES_HOST --user $PACKAGES_USER --fabfile=/usr/share/ida-fabric/fabfile \
publish_to_aptly:${WORKSPACE}/${ARTEFACT_PATH},${BUILD_TAG},${REPO_NAME},${REPO_DISTRIBUTION},${REPO_PREFIX},${PACKAGES_PUBKEY_GPG}

done
