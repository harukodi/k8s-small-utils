FROM ubuntu:25.04
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
# Update Ubuntu Software repository
RUN apt update && apt upgrade -y
# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install dnsutils iputils-ping curl wget netcat nano -y
RUN rm -rf /var/lib/apt/lists/*
RUN apt clean
CMD ["/bin/bash"]