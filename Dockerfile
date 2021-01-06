FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y && apt install sshpass sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN  echo 'test:test' | chpasswd

RUN su - test

COPY ssh_config /etc/ssh/ssh_config

RUN service ssh start
