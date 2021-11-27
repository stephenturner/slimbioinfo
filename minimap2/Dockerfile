FROM alpine:3.15

ARG VERSION="2.23"

RUN apk update && apk add --no-cache wget make gcc zlib-dev libc-dev

WORKDIR /src
RUN wget https://github.com/lh3/minimap2/releases/download/v${VERSION}/minimap2-${VERSION}.tar.bz2 && \
    tar xjf minimap2-${VERSION}.tar.bz2 && \
    cd minimap2-${VERSION} && \
    make -j4 && \
    install -D -t /usr/local/bin minimap2 && \
    cd .. && \
    rm -rf minimap2-${VERSION} minimap2-${VERSION}.tar.bz2

WORKDIR /data
