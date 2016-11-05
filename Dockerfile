FROM centos
MAINTAINER Raghu K <rwn1116@gmail.com>

RUN yum install httpd -y
ADD index.html /var/www/html/index.html

#CMD exec /sbin/httpd
#CMD exec /usr/sbin/apachectl -DFOREGROUND
ENTRYPOINT exec /usr/sbin/apachectl -DFOREGROUND
EXPOSE 80

