FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt install apache2 apache2-utils -y && \
    a2enmod ssl cgi rewrite

VOLUME /etc/apache2/sites-enabled
VOLUME /var/www
VOLUME /etc/ssl/certs_empresa

EXPOSE 80/tcp
EXPOSE 443/tcp

CMD ["apachectl", "-D", "FOREGROUND"]
