#!/bin/bash
#  preinstall utils 
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
  
#如果是国内安装要添加源，使用阿里云镜像  
#sudo yum-config-manager \
#  --add-repo \
#  http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

#配置存储
# add repository
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# make cache
sudo yum makecache fast

# install the latest stable version of docker
sudo yum install -y docker-ce

# start deamon and enable auto start when power on
sudo systemctl start docker
sudo systemctl enable docker
# 配置当前用户对docker的执行权限
# add current user 
#sudo groupadd docker
#sudo gpasswd -a ${USER} docker
#sudo systemctl restart docker
#安装docker-compose
echo "install docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "display docker-compose version"
docker-compose --version #1.24.1
echo "display docker version"
docker --version #20.10.17

docker_dir="/docker"
smartsmoke_dir="$docker_dir/smartsmoke"
mkdir -p $docker_dir
#建立smartsmoke储存docker-compose
mkdir -p $smartsmoke_dir
