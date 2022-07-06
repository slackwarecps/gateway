## THIS IS A TEST
test!!!

# eureka-server
eureka-gateway

# how to build
    docker build -t fabioalvaro/eureka-gateway .

# how to run -- example
  docker run -it --name lixo --env SERVER_PORT=9092 --env CLIENT_SERVICE_URL=http://localhost:9081/eureka --env APPLICATION_NAME=bob-esponja fabioalvaro/eureka-gateway:latest  sh
