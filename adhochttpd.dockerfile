FROM centos
MAINTAINER chinmayrjain1@gmail.com 
ENV x=app
RUN dnf  install  httpd  -y 
RUN mkdir  /myapps
WORKDIR  /myapps
COPY  .   .   
RUN  chmod +x  start.sh 
EXPOSE 80 
ENTRYPOINT  /bin/bash /myapps/start.sh
