FROM eclipse-temurin:17-jdk-alpine

COPY ./target/*.jar app.jar

RUN apt-get -y update

RUN apt-get -y install curl

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
