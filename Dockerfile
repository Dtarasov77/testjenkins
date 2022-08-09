FROM ubuntu:latest

LABEL maintainer="Tarasov D.V. from 185.68.21.140"

RUN apt-get update && apt-get upgrade -y && \ 
apt-get install apache2 -y && apt-get clean

COPY index.html /var/www/html/

EXPOSE 80

CMD ["apache2ctl" , "-D" , "FOREGROUND"]
