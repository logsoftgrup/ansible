# PHP container
# Using CentOS base image and Apache Web server

# Use httpd container image
FROM httpd-container.image:latest
USER root

MAINTAINER Bogdan Dumitrache

# Add necessary software
RUN yum install php -y

# Add demo content files
RUN echo '<?php phpinfo() ?>' > /var/www/html/index.php
EXPOSE 80

# Start the service

