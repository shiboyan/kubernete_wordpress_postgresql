docker build --no-cache --force-rm  -t wp4pg_redis:php_latest_v01 .
docker tag wp4pg_redis:php_latest_v01 minashi/wp4pg_redis:php_latest_v01 
docker push minashi/wp4pg_redis:php_latest_v01
