FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get upgrade -q -y -o Dpkg::Options::="--force-confnew" &&\
    apt-get install -q -y --force-yes --no-install-recommends \
      python-yaml python-requests ssh \
      python-software-properties software-properties-common wget apt-transport-https ca-certificates &&\
    ( wget -qO - https://packages.ida.digital.cabinet-office.gov.uk/keyring.gpg | apt-key add - ) &&\
    add-apt-repository https://packages.ida.digital.cabinet-office.gov.uk/ida-fabric/ &&\
    apt-get -qq update -y &&\
    apt-get -qq install ida-fabric --force-yes &&\
    apt-get clean

RUN mkdir /script
COPY upload_to_aptly.sh /script/.
RUN chmod +x /script/upload_to_aptly.sh

RUN mkdir /root/.ssh
