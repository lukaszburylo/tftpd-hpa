FROM alpine
MAINTAINER Lukasz Burylo <lukasz@burylo.com>

RUN apk add --update tftp-hpa
RUN apk add --update syslinux
RUN cp -R /usr/share/syslinux/* /var/tftpboot/

VOLUME /var/tftpboot

EXPOSE 69/udp
CMD ["/usr/sbin/in.tftpd","--foreground","--listen","--address [::]:69","--secure","/var/tftpboot"]
