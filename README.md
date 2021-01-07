# Steps to DockerFile Ubuntu
 - Build Image(inside dockerFile in ubuntu path directory run this command):
 ```sh 
 $ docker build -t ubuntu_ansible_test .
 ```
 - Create Network: 
 ```sh 
 $ docker network create --subnet=172.18.0.0/16 mynet123
 ```
 - Run Image: 
 ```sh 
 $ docker run --net mynet123 --ip 172.18.0.22 -it cetos_ansible_test bash
 ``` 

 # Steps to DockerFile CentOS
 - Build Image(inside dockerFile in centOS path directory run this command):
 ```sh 
 $ docker build -t centos_ansible_test .
 ```
 - Create Network: 
 ```sh 
 $ docker network create --subnet=172.18.0.0/16 mynet123
 ```
 - Run Image: 
 ```sh 
 $ docker run --net mynet123 --ip 172.18.0.22 --privileged -ti -e container=docker -v /sys/fs/cgroup:/sys/fs/cgroup cetos_ansible_test /usr/sbin/init
 ``` 


### Ansible
 - Generate keys to ssh: 
```sh 
$ ssh-keygen
```
 - Copy public key to remote host: 
```sh 
$ ssh-copy-id -i /home/user/.ssh/id_rsa.pub test@172.18.0.22
```
 - Test if ssh is working: 
```sh 
$ ssh -i /home/user/.ssh/id_rsa.pub test@172.18.0.22
```
