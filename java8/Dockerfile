FROM ubuntu:14.04
RUN locale-gen en_GB.UTF-8
ENV LC_ALL     en_GB.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get upgrade -q -y -o Dpkg::Options::="--force-confnew" &&\
    apt-get install -q -y --force-yes --no-install-recommends python-software-properties software-properties-common &&\
    add-apt-repository ppa:webupd8team/java &&\
    apt-get update &&\
    echo $( echo "debconf shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections ) &&\
    apt-get install -q -y --force-yes --no-install-recommends oracle-java8-installer oracle-java8-set-default &&\
    apt-get clean &&\ 
    find / -type f -name 'jdk-8u151-linux-x64.tar.gz' -delete &&\
    ls -latR /var/cache
CMD ["/bin/bash"]
