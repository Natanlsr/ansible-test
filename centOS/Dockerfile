FROM centos:7
ENV container docker

RUN yum -y install openssh-server openssh-clients epel-release sudo && \
    rm -f /etc/ssh/ssh_host_ecdsa_key /etc/ssh/ssh_host_ed25519_key /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN yum -y install pwgen

RUN useradd admin -G wheel
RUN echo 'admin:admin' | chpasswd
RUN echo '%admin ALL=(ALL) ALL' >> /etc/sudoers

RUN mkdir -p /home/admin/.ssh
RUN chown -R admin:admin /home/admin/.ssh; chmod 700 /home/admin/.ssh

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]