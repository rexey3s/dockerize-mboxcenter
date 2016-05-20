FROM corvis/java8
MAINTAINER Dmitry Berezovsky <dmitry.berezovsky@logicify.com>

ENV           FFMPEG_VERSION  2.6.3
ENV           YASM_VERSION    1.3.0
ENV           OGG_VERSION     1.3.2
ENV           VORBIS_VERSION  1.3.4
ENV           LAME_VERSION    3.99.5
ENV           FAAC_VERSION    1.28
ENV           XVID_VERSION    1.3.3
ENV           FDKAAC_VERSION  0.1.3
ENV           SRC             /usr/local
ENV           LD_LIBRARY_PATH ${SRC}/lib
ENV           PKG_CONFIG_PATH ${SRC}/lib/pkgconfig


COPY compile-ffmpeg.sh /tmp/compile-ffmpeg.sh

RUN bash /tmp/compile-ffmpeg.sh

# Just to make sure that everything is fine
RUN ffmpeg -buildconf
RUN rm -f /tmp/compile-ffmpeg.sh
WORKDIR /app
ADD mcenter/ui/target/ui-0.1.0.RELEASE.jar /app/app.jar
ADD mcenter/application.docker /app/application.properties
EXPOSE 80:8080
EXPOSE 21:21
EXPOSE 6969:6969
EXPOSE 1021-1025:1021-1025
ENTRYPOINT ["java","-jar", "app.jar", "--spring.config.location.file:/app/application.properties"]

