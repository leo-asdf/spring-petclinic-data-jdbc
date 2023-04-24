FROM openjdk:17-jdk-slim

RUN useradd -r -u 1000 devops
mkdir -p /opt/devops
RUN chown devops /opt/devops

USER devops
WORKDIR /opt/devops

ARG JAR_FILE=build/libs/petclinic.jar
COPY ${JAR_FILE} /opt/devops/petclinic.jar

ENTRYPOINT java -jar petclinic.jar
