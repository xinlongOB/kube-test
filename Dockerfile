#Nginx Dockerfile

FROM centos:centos7.7.1908 

MAINTAINER wangxiaochun <root@wangxiaochun.com>

RUN yum install -y  gcc gcc-c++  pcre pcre-devel zlib zlib-devel openssl openssl-devel \
    && useradd -r -s /sbin/nologin nginx \
    && yum clean all 
    &&  yum install httpd  -y



COPY index.html /var/www/html


EXPOSE 80 443

#CMD ["nginx","-g","daemon off;"]
