FROM centos
RUN yum install sudo -y
RUN yum install vim -y
RUN yum install /sbin/service
RUN yum install httpd -y
RUN yum install php -y
COPY *.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
