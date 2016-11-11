FROM ubuntu:trusty

MAINTAINER chenug <jonechenug@gmail.com>
COPY rc.local /etc/rc.local
RUN apt-get update
RUN curl -sSL https://raw.githubusercontent.com/jonechenug/finalspeed/master/install_fs.sh --output install_fs.sh \
&& chmod +x install_fs.sh \
&& ./install_fs.sh 2>&1 | tee install.log 
