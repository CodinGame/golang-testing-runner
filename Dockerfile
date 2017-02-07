FROM golang:1.8
MAINTAINER Julien Poulton <julien@codingame.com>
COPY run.sh /
ENTRYPOINT ["/run.sh"]