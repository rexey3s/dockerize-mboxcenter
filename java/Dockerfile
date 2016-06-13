FROM java:openjdk-8-jdk-alpine

WORKDIR /app

ADD mcenter/ui/target/ui-0.1.0.RELEASE.jar /app/app.jar

ADD mcenter/application.docker /app/application.properties

EXPOSE 8080
EXPOSE 6969
ENTRYPOINT ["java","-jar", "app.jar", "--spring.config.location.file:/app/application.properties"]

