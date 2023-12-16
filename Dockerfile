FROM maven:3.9 as build

COPY . .
RUN mvn clean package

FROM tomcat:9.0.84-jdk21
LABEL maintainer="brad@bradandmarsha.com"

COPY --from=build target/helloworld.war /usr/local/tomcat/webapps/
