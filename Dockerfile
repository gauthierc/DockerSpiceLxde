# Minimal lxde desktop with xspice-server 
# To build:
# 1) Install docker (http://docker.io)
# 2) Run:
# docker run -d <imageid>
#

FROM        ubuntu:20.04
MAINTAINER Gauthier C.
RUN        apt-get update && apt-get -y install software-properties-common 
RUN    DEBIAN_FRONTEND=noninteractive  apt-get upgrade -y
RUN	   DEBIAN_FRONTEND=noninteractive  apt-get -y install xserver-xspice x11-xserver-utils libpam-ldapd lxde-core lxterminal lxrandr
COPY	   spiceqxl.xorg.conf /etc/X11/	   
COPY	   resolution.desktop /etc/xdg/autostart/
COPY	   keyboard.desktop /etc/xdg/autostart/
COPY 	   run.sh	/root/
VOLUME	   ["/home"]
EXPOSE     5900
CMD        /root/run.sh
