#
# the documentation of VIA
#
FROM php:8.1.3-apache
LABEL maintainer="kontakt@stadtlandnetz.de"

USER root

RUN apt-get update

WORKDIR /var/www/html
ADD . / /var/www/html/
RUN chown -R www-data:www-data /var/www

# Expose ports
# important for the port-tunneling in the OTC configuration
EXPOSE 90

# Set the default command to execute
# when creating a new container
# CMD service nginx start
