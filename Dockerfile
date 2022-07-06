FROM maven:3.8.1-openjdk-17-slim

ARG JAR_FILE=target/*jar
COPY ${JAR_FILE} app.jar

ENV SERVER_PORT=9082
ENV CLIENT_SERVICE_URL=http://localhost:9081/eureka
ENV APPLICATION_NAME=gateway

ENTRYPOINT ["java","-Xms128M","-Xmx128M","-jar","/app.jar" ,"--server.port=${SERVER_PORT}","--eureka.client.serviceUrl.defaultZone=${CLIENT_SERVICE_URL}","--spring.application.name=${APPLICATION_NAME}"]
