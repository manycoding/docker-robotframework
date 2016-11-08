FROM openjdk:jre-alpine
MAINTAINER Valery M. <vamukhs@gmail.com>

RUN apk add --update --no-cache \
    python \
    python-dev \
    py-pip

RUN pip install -U \
    pip \
    robotframework \
    selenium==2.53.6 \
    robotframework-selenium2library \
    robotframework-ftplibrary
