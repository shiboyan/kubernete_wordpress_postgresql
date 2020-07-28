#!/bin/bash
# Install wordpress & pg4wd
if [ ! -d /var/www/html/wp-content ];then 
    rm -rf /var/www/html/* && cd /var/www/html && git clone https://github.com/shiboyan/k8s_wordpress_for_postgresql.git && \
    mv k8s_wordpress_for_postgresql/* ./ && \
    sed -i "s/REPLACE_TO_YOUR_DB_PASSWORD/$WORDPRESS_DB_PASSWORD/g;s/REPLACE_TO_YOUR_DB_USER/$WORDPRESS_DB_USER/g; \
    s/REPLACE_TO_YOUR_DB_HOST/$WORDPRESS_DB_HOST/g;s/REPLACE_TO_YOUR_DB_NAME/$WORDPRESS_DB_NAME/g" ./wp-config.php &&\
    chown -R www-data:www-data /var/www/html  
fi
service php7.4-fpm start 
service nginx start
#ls /var/log/nginx
#echo $?
tail -f /var/log/nginx/*
