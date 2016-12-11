FROM php:7.0.14-fpm
MAINTAINER ouyafei <321177122@qq.com>


#切换阿里云的 debian 8 jessie 源
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN cat /etc/apt/sources.list

# 安装composer 配置中文镜像
COPY ./composer-1.2.4.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc \
  && . ~/.bashrc
RUN /usr/local/bin/composer config -g repo.packagist composer https://packagist.phpcomposer.com


RUN apt-get install -y git curl wget cron vim locales libfreetype6-dev mariadb-client \
  && rm -rf /var/lib/apt/lists/* \
  && pecl install zip \
  && docker-php-ext-enable zip \
  && docker-php-ext-install mysqli pdo_mysql


WORKDIR /web/www
