# sshd for RaspberryPi based on Raspbian Wheezy
#
# VERSION               0.0.1

FROM     venik/raspi
MAINTAINER venik "venik@venik.org"

WORKDIR /root
ENV HOME /root
USER root

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

