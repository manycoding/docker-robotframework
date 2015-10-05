FROM ubuntu:14.04.3

MAINTAINER manycoding <sobigmuchspam@gmail.com>

# Usual magic to update, install & clean packages
RUN apt-get update && apt-get install -y \
    python-pip \
    --no-install-recommends \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Update pip
RUN pip install -U \
    pip \
    robotframework
