FROM alpine:3.15

ARG VERSION="0.3.3"

RUN apk update && apk add g++ make wget libc-dev zlib-dev

WORKDIR /src
RUN wget https://github.com/Illumina/akt/archive/refs/tags/v${VERSION}.tar.gz && \
    tar xzf v${VERSION}.tar.gz && \
    cd akt-${VERSION} && \
    make -j4 && \
    install -D -t /usr/local/bin akt && \
    cd .. && \
    rm -rf akt-${VERSION} v${VERSION}.tar.gz

WORKDIR /data
