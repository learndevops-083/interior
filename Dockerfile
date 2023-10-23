FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
WORKDIR  /var/www/html
COPY interior  /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
