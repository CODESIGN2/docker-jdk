ARG BASE_VERSION
FROM openjdk:${BASE_VERSION}-alpine
MAINTAINER codesign2@icloud.com

ENV BASE_VERSION=${BASE_VERSION}

# Build deps
RUN apk update \
  && apk add --no-cache git openssh-client build-base \
    libxml2-dev libxslt-dev postgresql-dev libffi-dev readline-dev \
    yaml-dev zlib-dev bzip2-dev ca-certificates tzdata
