# Webserver container
# Using CentOS base image and Apache Web server

# Pull the centos image from the local repository
FROM centos:latest
USER root

MAINTAINER Bogdan Dumitrache

# Update image
RUN yum update -y

# Add necessary software
RUN yum install cronie -y

# Supervise Cron service
COPY supervisor.crond.conf /etc/supervisor/conf.d/crond.conf

# Start the service

# Modify timezone
RUN rm -f /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Bucharest /etc/localtime

#Add necessary software
RUN yum install epel-release python-dateutil vim-enhanced -y
RUN yum install python-pip -y
RUN pip install supervisor

# Configure supervisord
RUN mkdir -pv /etc/supervisor/conf.d/
COPY supervisor.conf /etc/supervisor/supervisor.conf

# Supervise Cron service
COPY supervisor.crond.conf /etc/supervisor/conf.d/crond.conf

# Start the service
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisor.conf"]

