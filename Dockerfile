FROM phusion/baseimage:0.9.15
# Maintainer
# ----------
MAINTAINER babim <babim@matmagoc.com>

RUN apt-get update && apt-get install bash curl -y 

# copyright and timezone
RUN bash <(curl -s https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/copyright.sh)

RUN rm -f /etc/service/sshd/down \
    && /etc/my_init.d/00_regen_ssh_host_keys.sh && chown root:root /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN chown root:root /var/run/sshd

EXPOSE 22

CMD ["/sbin/my_init"]
