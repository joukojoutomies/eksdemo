# Building the Docker images
docker build -t docker.io/lindstedt/gb-frontend:v5 php-redis
docker build -t docker.io/lindstedt/gb-redisslave:v2 redis-slave
make -C php-redis
make -C redis-slave
make -C php-redis all-push
make -C redis-slave all-push
