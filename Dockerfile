FROM centos:latest

RUN yum install sudo -y
RUN yum install vim -y
RUN yum install /sbin/service -y
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
COPY ./index.html /var/www/html/
Expose 80
