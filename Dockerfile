FROM ubuntu:latest
WORKDIR /app

ENV PIP_BREAK_SYSTEM_PACKAGES 1
RUN apt-get update && apt-get install maven -y


COPY . .
RUN mvn clean package
ENTRYPOINT ["java","-jar","target/spring-boot-web.jar"]
