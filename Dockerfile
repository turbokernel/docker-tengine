FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install git -y
WORKDIR /opt
RUN git clone https://gitee.com/janpoem/ubuntu-server-deploy
WORKDIR /opt/ubuntu-server-deploy
RUN git checkout ubuntu_1604lts
RUN git pull
RUN ./server.sh init
RUN ./tengine.sh install
RUN ./php.sh install
