FROM nginx:1.25.4

USER root
COPY nginx.conf etc/nginx/nginx.conf
COPY server.c home/.
COPY fastcgi_run.sh home/.

RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    apt-get clean; \
    useradd nginx; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chmod g-s /usr/bin/expiry; \
    chmod u-s /usr/bin/newgrp; \
    chmod g-s /usr/bin/chage; \
    chmod g-s /sbin/unix_chkpwd; \
    chmod u-s /bin/mount; \
    chmod g-s /usr/bin/wall; \
    chmod u-s /bin/su; \
    chmod u-s /usr/bin/passwd; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/gpasswd; \
    chmod u-s /bin/umount; \
    rm -rf /var/lib/apt/lists

USER nginx
WORKDIR /home/
RUN sh fastcgi_run.sh;
CMD ["nginx", "-g", "daemon off;"]