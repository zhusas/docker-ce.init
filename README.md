# docker-ce.init
ubuntu系统的docker-ce安装脚本

为了解决国内docker官方源被墙，网速慢的实在忍受不了，写了个脚本，其中内容也可以用ansible playbook实现，先上脚本吧~~

docker安装源替换为科技大的镜像源，自动安装最新的docker-ce版本，使用前记得填上自己的加速器地址哦，不然pull镜像的时候要报错的。
