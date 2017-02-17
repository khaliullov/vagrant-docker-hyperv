FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y build-essential \
    sudo \
    python-virtualenv \
    curl \
    bsdtar \
    mc \
    telnet \
    git \
    awscli \
    vim \
    libpq-dev \
    libpython-dev \
    libffi-dev \
    openssh-server

RUN useradd --create-home --shell /bin/bash  --user-group vagrant
RUN echo vagrant:vagrant | chpasswd
RUN echo "vagrant ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir -p /home/vagrant/.ssh
ADD src/authorized_keys /home/vagrant/.ssh/authorized_keys
RUN chown -R vagrant:vagrant /home/vagrant
RUN chmod 0700 /home/vagrant/.ssh
RUN mkdir -p /var/run/sshd

CMD /usr/sbin/sshd -D
