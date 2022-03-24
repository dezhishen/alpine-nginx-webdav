FROM nginx:stable-alpine

LABEL maintainer="github.com/dezhishen"

RUN apk -U upgrade \
 && apk add --no-cache apache2-utils

VOLUME /media

EXPOSE 80
COPY webdav.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
CMD /entrypoint.sh && nginx -g "daemon off;"
