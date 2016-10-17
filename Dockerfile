FROM openjdk:jre-alpine

MAINTAINER Valery M. <vamukhs@gmail.com>

RUN apk add --update --no-cache python python-dev py-pip

RUN pip install -U \
    pip \
    robotframework \
    robotframework-selenium2library