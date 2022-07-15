FROM ghcr.io/heremias/y-update-y-master:2b57a7efb0128d9fbe94afd285ea1f3ba60d3f3f


COPY build.sh /var/www
COPY mods.sh /var/www
COPY setup.sh /var/www
COPY drushcp.sh /var/www
COPY dsync.sh /var/www
COPY getuuid.sh /var/www
RUN chmod 777 build.sh
RUN chmod 777 mods.sh
RUN chmod 777 setup.sh
RUN chmod 777 drushcp.sh
RUN chmod 777 dsync.sh
RUN chmod 777 getuuid.sh

#EXPOSE 80

