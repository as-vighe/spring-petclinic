# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

EXPOSE 8080

# copy jar into image
#COPY target/spring-petclinic-2.7.0.BUILD-SNAPSHOT.jar /usr/bin/spring-petclinic.jar
COPY ./target/spring-petclinic-2.7.0.jar /usr/bin/spring-petclinic.jar

# run application with this command line 
ENTRYPOINT ["java","-jar","/usr/bin/spring-petclinic.jar","--server.port=8080"]
