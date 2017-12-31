# Webserver container
# Using CentOS base image and Apache Web server

# Use our base image
FROM base.image:latest
USER root

MAINTAINER Bogdan Dumitrache

# Add necessary software
RUN yum install httpd -y

# Supervise Apache and Cron service
COPY supervisor.httpd.conf /etc/supervisor/conf.d/httpd.conf

# Add demo content files
RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80

# Start the service

