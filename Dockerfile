FROM openjdk:17-jdk-slim

RUN useradd -r -u 1000 devops

RUN mkdir -p /opt/devops/logs
RUN chown devops /opt/devops

USER devops
WORKDIR /opt/devops

ARG VERSION
ARG JAR_FILE=build/libs/spring-petclinic-data-jdbc-${VERSION}.jar
COPY ${JAR_FILE} /opt/devops/petclinic.jar

ENTRYPOINT java -jar petclinic.jar
