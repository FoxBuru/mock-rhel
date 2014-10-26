FROM		centos:latest
MAINTAINER	Iván De Gyves <fox@foxburu.mx>

RUN		yum -y groupinstall "Development Tools"
RUN		yum -y install epel-release
RUN		yum -y update
RUN		yum -y install mock
RUN		useradd -m -d /home/fox-building -u 99999 fox-building
RUN		usermod -a -G mock fox-building

USER		foxburu

ONBUILD		ADD	mock-configs /etc/mock
