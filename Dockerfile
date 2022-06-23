FROM maven:latest AS builder
WORKDIR /app
COPY . .
RUN mvn install -DskipTests -Dcheckstyle.skip

FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /petclinic
COPY --from=builder /app/target/spring-petclinic-2.4.2.jar ./afeef-petclinic.jar
CMD java -jar afeef-petclinic.jar --spring.config.location=/mnt/application.properties