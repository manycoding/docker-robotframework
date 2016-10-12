FROM ubuntu:14.04

MAINTAINER Valery Mukhtarulin <vamukhs@gmail.com>

# Usual magic to update, install & clean packages
RUN apt-get update && apt-get install -y \
    python-pip \
    --no-install-recommends \
    && apt-get clean autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update pip
RUN pip install -U \
    pip \
    robotframework

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]