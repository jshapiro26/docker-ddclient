FROM centos:7
MAINTAINER jshapiro26

WORKDIR /root

RUN yum install -y perl perl-Net-IP perl-Net-DNS perl-IO-Socket-INET6 perl-IO-Socket-SSL perl-File-Temp patch wget
RUN wget 'https://downloads.sourceforge.net/project/ddclient/ddclient/ddclient-3.8.3/ddclient-3.8.3.tar.gz'
RUN tar -xvzf ddclient-3.8.3.tar.gz 
RUN cp ddclient-3.8.3/ddclient /usr/sbin
RUN mkdir /etc/ddclient /var/cache/ddclient

ADD ddclient.conf /etc/ddclient/ddclient.conf
ADD entry.sh .
RUN chmod +x entry.sh

ENTRYPOINT ["./entry.sh"]