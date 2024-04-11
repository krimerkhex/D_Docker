FROM nginx
COPY nginx.conf etc/nginx/nginx.conf
RUN service nginx start
COPY server.c home/.
COPY fastcgi_run.sh home/.
RUN apt-get update --fix-missing
RUN apt-get install -y gcc
RUN apt-get install -y spawn-fcgi
RUN apt-get install -y libfcgi-dev
RUN sh home/fastcgi_run.sh
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]