FROM         centos:latest
MAINTAINER   kushalsamota  kushalsamota@gmail.com
LABEL        INFO  kindly run this image with docker run -d imagename
LABEL        INFO  this is a test image. use on your own risk
LABEL        Documentroot  /var/www/html  place all files related to website here
RUN          yum install httpd -y
WORKDIR      /var/www/html
COPY         ./src  /var/www/html
EXPOSE       80
ENV          PORT  80
CMD          ["/usr/sbin/httpd","-D","FOREGROUND"]
