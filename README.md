# Dockerfiles used to build Verify projects

To add a new Docker image, simply create a new directory within this repository and add your Dockerfile to it.

The `build.sh` script will iterate through each subdirectory and build a Docker image using each Dockerfile it finds. This image is named after the subdirectory, and will be pushed to the 'govukverify' account on the Docker Hub.

**NOTE:** These images are world-readable on the Docker Hub, so you **must not** include any secret data within them.

Jenkins runs this job daily, so that we can quickly incorporate any changes made to the Docker image you specify in your Dockerfile's `FROM` statement.
