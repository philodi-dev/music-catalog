FROM --platform=linux/amd64 openjdk:21-oracle
ARG JAR_FILE=./target/*.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
EXPOSE 4043
ENTRYPOINT ["java","-jar","app.jar"]
