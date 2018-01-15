FROM ubuntu:14.04
RUN locale-gen en_GB.UTF-8
ENV LC_ALL     en_GB.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get upgrade -q -y -o Dpkg::Options::="--force-confnew" &&\
    apt-get install -q -y --force-yes --no-install-recommends python-software-properties software-properties-common curl unzip dpkg &&\
    add-apt-repository ppa:openjdk-r/ppa  &&\
    apt-get update &&\
    apt-get install -q -y --force-yes --no-install-recommends openjdk-8-jdk &&\
    apt-get clean &&\
    ls -latR /var/cache
ENV JAVA_HOME /usr/lib/jvm/java
CMD ["/bin/bash"]
