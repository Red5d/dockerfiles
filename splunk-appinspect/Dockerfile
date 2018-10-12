FROM python:2.7-alpine

MAINTAINER Red5d

RUN apk add --no-cache build-base zlib-dev libxml2-dev libxslt-dev libmagic && \
    pip install --no-cache http://dev.splunk.com/goto/appinspectdownload && \
    apk del build-base

WORKDIR /src

CMD splunk-appinspect inspect /src/
