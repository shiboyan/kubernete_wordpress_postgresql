FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV PATH $PATH:/var/www/html/bin:/usr/local/bin
ENV PHP_VER 7.4

# Install PHP
RUN apt-get -y update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get -y update && \
    apt-get install -y php && \
    apt-get install -y php-fpm && \
    apt-get install -y php-pgsql

# Install PHPRedis
RUN apt-get install -y php-pear && \
    apt-get install -y php-dev && \
    printf "no\n" | pecl install redis && \
    echo "extension=redis.so" > /etc/php/${PHP_VER}/mods-available/redis.ini && \
    ln -sf /etc/php/${PHP_VER}/mods-available/redis.ini /etc/php/${PHP_VER}/fpm/conf.d/20-redis.ini && \
    ln -sf /etc/php/${PHP_VER}/mods-available/redis.ini /etc/php/${PHP_VER}/cli/conf.d/20-redis.ini 

# Install Nginx
RUN apt-get install -y nginx
ADD default /etc/nginx/sites-available/default


# Install Essential Tools
RUN apt-get install -y wget && \
    apt-get install -y git

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443


ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 715 /usr/local/bin/docker-entrypoint.sh 
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
