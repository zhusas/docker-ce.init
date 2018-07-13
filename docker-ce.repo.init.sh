#!/bin/bash

#定义你自己的Registry国内加速器地址
MIRRORS='"http://f23ccc88.m.daocloud.io"'

#加载科大的docker-ce ubuntu的gpg key
curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

#添加科大的docker-ce源
add-apt-repository \
"deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
$(lsb_release -cs) \
stable"

#安装最新版docker-ce
apt update && apt install -y docker-ce 

#添加daocloud.io的docker hub 加速器
if [ -d /etc/docker/ ];then
    echo {\"registry-mirrors\": [$MIRRORS]} > /etc/docker/daemon.json
else
    mkdir -pv /etc/docker && echo {\"registry-mirrors\": [$MIRRORS]} > /etc/docker/daemon.json
fi

echo "Docker install finish"
