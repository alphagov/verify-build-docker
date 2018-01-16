FROM openjdk:8-jdk
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get upgrade -q -y -o Dpkg::Options::="--force-confnew" &&\
    apt-get install -q -y --force-yes --no-install-recommends python-software-properties software-properties-common curl unzip dpkg apt-transport-https locales &&\
    locale-gen --purge en_GB.UTF-8 && \
    apt-get clean
ENV LC_ALL en_GB.UTF-8
CMD ["/bin/bash"]
