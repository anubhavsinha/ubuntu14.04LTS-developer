apt-get update
apt-get install build-essential python-dev -y
# installing docker
apt-get install linux-image-extra-`uname -r` -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install lxc-docker -y
groupadd docker
service docker restart
docker run -i -t ubuntu:14.04 /bin/bash