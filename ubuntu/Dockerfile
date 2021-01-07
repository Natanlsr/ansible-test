FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y && apt install sshpass sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN  echo 'test:test' | chpasswd

RUN su - test
<<<<<<< HEAD:ubuntu/Dockerfile
=======

COPY ssh_config /etc/ssh/ssh_config
>>>>>>> 9f38a52059b3a24f4d482c4ebc1d7d65c539eaf0:Dockerfile

RUN service ssh start
