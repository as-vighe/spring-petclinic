FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of spring-petclinic.
ENV SA_LOGIC_API_URL http://localhost:5000
# ADD target/spring-petclinic-2.7.0-SNAPSHOT.jar/
COPY target/spring-petclinic-2.7.0-SNAPSHOT.jar /usr/bin/spring-petclinic.jar
EXPOSE 8080
CMD ["java", "-jar", "/usr/bin/spring-petclinic-2.7.0-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]
