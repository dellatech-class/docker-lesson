FROM centos:7
#RUN yum -y update
RUN yum -y install httpd
#RUN echo "Welcome to dellatech global spring 2020 class -0801202" > /var/www/html/index.html
COPY index.html /var/www/html/index.html 
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
