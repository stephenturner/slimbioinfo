FROM alpine:3.15

ARG VERSION="2.30.0"

RUN apk update && apk add --no-cache wget

RUN wget https://github.com/arq5x/bedtools2/releases/download/v${VERSION}/bedtools.static.binary -O /usr/local/bin/bedtools && \
    chmod 755 /usr/local/bin/bedtools && \
    apk del wget

WORKDIR /data
