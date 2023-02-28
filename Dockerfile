FROM openjdk:17-oracle
COPY target/security-0.0.1-SNAPSHOT.jar  app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app.jar"]