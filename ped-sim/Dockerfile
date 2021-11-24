FROM alpine:3.15

ARG VERSION="1.3.4"

RUN apk update && apk add gcc g++ make libc-dev zlib-dev wget git vim boost-dev

WORKDIR /src
RUN wget https://github.com/stephenturner/ped-sim/archive/refs/tags/v${VERSION}.tar.gz && \
    tar xzf v${VERSION}.tar.gz && \
    cd ped-sim-${VERSION} && \
    make && \
    install -D -t /usr/local/bin ped-sim && \
    cd .. && \
    rm -rf v${VERSION}.tar.gz ped-sim-${VERSION}

WORKDIR /data
