FROM openjdk:jre-alpine

MAINTAINER Valery Mukhtarulin <vamukhs@gmail.com>

RUN apk add --update --no-cache python python-dev py-pip

RUN pip install -U \
    pip \
    robotframework \
    robotframework-selenium2library