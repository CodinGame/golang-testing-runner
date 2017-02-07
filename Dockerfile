FROM golang:1.8
MAINTAINER Julien Poulton <julien@codingame.com>
COPY run.sh /
COPY build.sh /build
RUN go get github.com/tools/godep
ENTRYPOINT ["/run.sh"]