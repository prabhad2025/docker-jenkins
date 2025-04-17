FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar docker-jenkins.jar

EXPOSE 8080

CMD ["java", "-jar", "docker-jenkins.jar"]