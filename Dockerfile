# ttyjs: Using zsh + oh-my-zsh
#
# Version: 0.0.2

FROM fedora:21
MAINTAINER Nicholas Moore

WORKDIR /root

ADD ttyjs-config.json /
ADD zshrc /root/.zshrc

RUN yum -y install npm make git irssi zsh;\
    npm install -g tty.js;\
    cp /usr/share/zoneinfo/US/Pacific /etc/localtime;\
    yum clean all;\
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

EXPOSE 3000

ENTRYPOINT ["tty.js", "--config", "/ttyjs-config.json"]
