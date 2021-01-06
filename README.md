# Steps
 - Build Image(inside dockerFile directory run this command):
 ```sh 
 docker build -t ubuntu_ansible_test .
 ```
 - Create Network: 
 ```sh 
 $ docker network create --subnet=172.18.0.0/16 mynet123
 ```
 - Run Image: 
 ```sh 
 $ docker run --net mynet123 --ip 172.18.0.22 -it ubuntu_ansible_test bash
 ``` 


-- Ansible
* Generate keys to ssh: 
```sh 
$ ssh-keygen
```
* Copy public key to remote host: 
```sh 
$ ssh-copy-id -i /home/user/.ssh/id_rsa.pub root@192.168.15.100
```
* Test if ssh is working: 
```sh 
$ ssh -i /root/.ssh/id_rsa.pub test@192.168.15.100
```
