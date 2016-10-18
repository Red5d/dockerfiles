FROM alpine:latest

MAINTAINER red5d

RUN apk add --no-cache build-base python py-pip py-gunicorn python-dev libxml2 libxml2-dev libxslt libxslt-dev && \
    pip install opentaxii && \
    apk del python-dev build-base libxml2-dev libxslt-dev

# Copy in base opentaxii file and set random secret value.
COPY opentaxii.yml /
RUN secret=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1); sed -i 's/changeme/'${secret}'g/' /opentaxii.yml
ENV OPENTAXII_CONFIG=/opentaxii.yml

# Copy in base services/collections configs and apply them.
COPY services.yml /
COPY collections.yml /
RUN opentaxii-create-services -c /services.yml && opentaxii-create-collections -c /collections.yml

EXPOSE 9000

COPY start.sh /
CMD /start.sh
