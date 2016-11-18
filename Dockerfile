FROM resin/rpi-raspbian

MAINTAINER Nat Weerawan <nat@cmmc.io> 
RUN apt-get update 

RUN apt-get install lighttpd -y


RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#RUN adduser www-data --group www-data --no-create-home --shell /bin/false --disabled-login
RUN usermod -a -G www-data www-data

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

EXPOSE 80
VOLUME /var/www

ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
