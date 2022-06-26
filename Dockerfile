FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /petclinic
COPY  ./target/spring-petclinic-2.4.2.jar ./petclinic.jar
CMD java -jar petclinic.jar --spring.config.location=/mnt/application.properties