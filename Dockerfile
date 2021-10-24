FROM debian:buster-slim

RUN apt-get update && apt-get install -y libssl-dev

ADD nginx.tar.gz /usr/local/
COPY nginx.conf /usr/local/nginx/conf/nginx.conf

CMD ["/usr/local/nginx/sbin/nginx","-g", "daemon off;"]