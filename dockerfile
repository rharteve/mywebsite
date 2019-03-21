FROM wonxin/httpd-php:latest


RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
CMD /bin/bash

COPY ./public-html/ /var/www/html/
