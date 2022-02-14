FROM ubuntu:latest
LABEL maintainer="sales@serverboy.uk"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

