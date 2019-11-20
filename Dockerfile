FROM golang:alpine
LABEL maintainer="l2x <wyy.hxl@gmail.com>"

# tool
RUN apk add git bash

# all dependencies repo
ADD repo.sh /tmp
RUN cd /tmp             \
    && chmod +x repo.sh \
    && ./repo.sh        \
    && rm repo.sh

ONBUILD ADD . /tmp
ONBUILD RUN cd /tmp && go build && go install
