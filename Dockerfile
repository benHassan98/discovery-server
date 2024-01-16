FROM ubuntu:23.04

RUN apt-get update

RUN apt-get install -y curl

FROM eclipse-temurin:17-jdk-alpine

COPY ./target/*.jar app.jar

EXPOSE 8761

ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
