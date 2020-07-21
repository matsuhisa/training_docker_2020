FROM centos
RUN yum -y update
RUN yum -y install httpd
ADD ./document/index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]