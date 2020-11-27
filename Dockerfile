FROM phusion/baseimage:focal-1.0.0-alpha1-amd64
# Maintainer
# ----------
MAINTAINER babim <babim@matmagoc.com>

RUN apt-get update && apt-get install bash curl -y 

# copyright and timezone
RUN curl -s https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/copyright.sh | bash

CMD ["/sbin/my_init"]
