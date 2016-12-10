# docker-php-env
使用docker 创建的一个本地 php 环境.

项目文件是放到
~/dev/docker-php-env/
这个目录里的

>## 软件环境
* Microsoft Windows [版本 10.0.14393]
* DockerToolbox-1.12.3.exe
* VirtualBox 5.0.30

使用toolbox的时候 老是无法挂在数据,最后通过
docker inspect xx 这个命令发现问题的所在,
是因为虚拟机默认情况下 只有把文件目录放在只 挂载了 c盘的用户目录
\\?\c:\Users c/Users


使用toolbox的时候 老是无法挂在数据,最后发现只有把docker文件目录放在User目录下才能正常
所以项目代码挪了下位置，问题解决。

### 1.服务列表
- [x] 数据库: mariadb-10.1
- [x] 网页服务: nginx-1.11.6
- [x] PHP : php-fpm-7.0
- [x] 数据库管理: phpmyadmin
- [x] 工作目录: workspace
- [x] 缓存管理: redis-3.2.5
- [ ] 队列服务: rabbitmq
- [ ] 持续添加中...


### 使用方法
1 克隆仓库到本地(/c/Users 目录下)
> git clone git@github.com:yafei236/docker-php-env.git

2  进入项目所在目录
> cd docker-php-env

3 创建并启动服务
>  docker-compose build
docker-compose up -d

4 → 在浏览器里打开
> http://docker_ip:80
