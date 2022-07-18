# docker-smartsmoke
使用docker一键安装smartping和smokeping

使用说明：

--------------------------------------------------------------------------

step1、确认yum源能正常使用

step2、使用git拉取

sudo yum install -y git-all

git clone https://github.com/erinlxy/docker-smartsmoke.git

step3、安装应用

cd ./docker-smartsmoke

sudo sh auto_install.sh

dc up -d

web页面 

smokeping页面  http://localhost:888/   

smartping页面  http://localhost:8899/

---------------------------------------------------------------------------

修改smokeping的路径

cd /usr/local/docker/smokeping/config

vi Targets

重启服务命令

dc restart smokeping

--------------------------------------------------------------------------

命令如下，可参考docker-compose的命令

dc up/start/down/images/ps/kill  smartping/smokeping

后台运行

dc up -d
