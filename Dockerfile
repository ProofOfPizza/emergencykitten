
FROM nginx:stable-alpine

ARG NGINX_CONF_FILE=nginx-local.conf
COPY ./$NGINX_CONF_FILE /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
