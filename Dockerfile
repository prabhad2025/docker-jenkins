#FROM openjdk:17-jdk-slim

#WORKDIR /app

#COPY target/*.jar docker-jenkins.jar

#EXPOSE 8080

#CMD ["java", "-jar", "docker-jenkins.jar"]
FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins.jar docker-jenkins.jar
ENTRYPOINT ["java","-jar","/docker-jenkins.jar"]