## -*- docker-image-name: "mcreations/openwrt-ftp" -*-

FROM mcreations/openwrt-x64
MAINTAINER Rexey3s <rexey3s@gmail.com> 

ENV FTP_USER admin
ENV FTP_PASS admin

# the HOST var is necessary for passive mode, so the client knows
# where to connect, if you are not running the docker container
# locally, you MUST specify a host name which is resolvable over the
# network
ENV HOST localhost
ENV PASV_MIN_PORT 49900
ENV PASV_MAX_PORT 50000

ADD image/root/ /

RUN opkg update &&\
    opkg install --force-checksum vsftpd shadow-useradd shadow-groupadd shadow-usermod openssl-util &&\
    rm /tmp/opkg-lists/*
RUN mkdir -p /data/${FTP_USER}/demo
EXPOSE 21
EXPOSE 49900-50000

CMD ["/start-ftp"]
