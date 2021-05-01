FROM	nginxdemos/hello

RUN		sed -i 's/listen.*/listen 8080;/g' /etc/nginx/conf.d/hello.conf
CMD		["/bin/sh", "-c", "exec nginx -g 'daemon off;'"]
