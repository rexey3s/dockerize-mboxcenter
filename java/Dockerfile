FROM java:8u92-alpine

EXPOSE 8080
EXPOSE 6969

RUN apk add -U tzdata

RUN cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

WORKDIR /app

ADD mcenter/ui/target/ui-0.1.0.RELEASE.jar /app/app.jar

ADD mcenter/application.docker /app/application.properties
ENTRYPOINT ["java","-jar", "app.jar", "--spring.config.location.file:/app/application.properties"]

