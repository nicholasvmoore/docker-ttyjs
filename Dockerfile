# SABnzbd
#
# Version: 0.0.1

FROM fedora:20
MAINTAINER Nicholas Moore

ADD ttyjs-config.json /

RUN yum -y install npm make git irssi zsh;\
    npm install -g tty.js;\
    cp /usr/share/zoneinfo/US/Pacific /etc/localtime;\
    yum clean all

EXPOSE 3000

ENTRYPOINT ["tty.js", "--config", "/ttyjs-config.json"]