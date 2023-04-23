FROM openjdk:17-jdk-slim

RUN useradd -r -u 1000 devops

RUN mkdir -p /opt/devops
RUN chown devops /opt/devops

USER devops
WORKDIR /opt/devops

ARG JAR_FILE=build/libs/spring-petclinic-data-jdbc-*.jar
COPY ${JAR_FILE} /opt/devops/petclinic.jar

ENTRYPOINT java ${JAVA_OPTIONS} ${JAVA_AGENT_OPTIONS} -jar petclinic.jar
