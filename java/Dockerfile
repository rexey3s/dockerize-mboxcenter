FROM jrottenberg/ffmpeg


ENV JAVA_VERSION 8u31
ENV BUILD_VERSION b13

# Upgrading system
RUN yum -y upgrade
RUN yum -y install wget

# Downloading Java
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

RUN yum -y install /tmp/jdk-8-linux-x64.rpm

RUN alternatives --install /usr/bin/java jar /usr/java/latest/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000

ENV JAVA_HOME /usr/java/latest

WORKDIR /app
ADD mcenter/ui/target/ui-0.1.0.RELEASE.jar /app/app.jar
ADD mcenter/application.docker /app/application.properties
EXPOSE 80:8080
EXPOSE 21:21
EXPOSE 6969:6969
EXPOSE 1021-1025:1021-1025
ENTRYPOINT ["java","-jar", "app.jar", "--spring.config.location.file:/app/application.properties"]

