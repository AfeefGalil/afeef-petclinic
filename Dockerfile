FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /petclinic
COPY ./petclinic.jar .
CMD java -jar petclinic.jar --spring.config.location=/mnt/application.properties