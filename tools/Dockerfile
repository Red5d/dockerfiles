FROM alpine:latest

MAINTAINER Red5d

# A lightweight image with some common commandline tools that I use.

RUN apk add --no-cache python3 python py-pip mtr git openssh speedtest-cli nmap nmap-scripts && \
    pip install --upgrade pip && pip install requests csvkit howdoi 
