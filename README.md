# docker-php-env
使用docker 创建的一个本地 php 环境.

项目文件是放到
~/dev/docker-php-env/
这个目录里的

软件环境
Microsoft Windows [版本 10.0.14393]
DockerToolbox-1.12.3.exe
VirtualBox 5.0.30

使用toolbox的时候 老是无法挂在数据,最后通过
docker inspect xx 这个命令发现问题的所在是因为 虚拟机默认只 挂载了 c盘的用户目录
\\?\c:\Users c/Users

所以项目代码挪到了 User目录下
