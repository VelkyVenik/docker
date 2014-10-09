# Raspbian updated with some basic tools and user
#
# VERSION               0.0.2

FROM     resin/rpi-raspbian:wheezy
MAINTAINER venik "venik@venik.org"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim mc sudo git

RUN apt-get install -y vim mc sudo git openssh-server
RUN mkdir /var/run/sshd

# Mac OS X color shell support
#ADD bashrc /etc/skel/.bashrc

RUN useradd -m -G sudo -s /bin/bash -U venik
RUN echo 'venik:venik' | chpasswd
RUN mkdir /home/venik/.ssh
ADD authorized_keys /home/venik/.ssh/authorized_keys
ADD vimrc /home/venik/.vimrc

RUN chown venik:venik -R /home/venik/

WORKDIR /home/venik
ENV HOME /home/venik

USER venik

CMD ["/bin/bash"]

