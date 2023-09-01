FROM ubuntu:latest

#apt-get update threw errors on r-pi. Update host system as such:
#cd /tmp
#wget http://ftp.us.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_armhf.deb
#sudo dpkg -i libseccomp2_2.5.1-1_armhf.deb
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y update && apt-get -y install ddclient curl libjson-any-perl
#COPY ddclient.conf /etc/ddclient.conf #now in the volume of the stack

#Final cleanup
RUN rm -drf /tmp/*
RUN apt-get clean && rm -rf /var/lib/apt/lists/*;


EXPOSE 80

ENTRYPOINT ["ddclient", "-foreground", "-noquiet", "-verbose", "-debug"]
