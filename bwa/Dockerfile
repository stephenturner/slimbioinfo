FROM alpine:3.15

ARG VERSION="0.7.17"

RUN apk update && apk add gcc make libc-dev zlib-dev wget

# Note 0.7.17 release doesn't work with gcc 10
# WORKDIR /src
# RUN wget https://github.com/lh3/bwa/releases/download/v${VERSION}/bwa-${VERSION}.tar.bz2
# RUN tar -xjf bwa-${VERSION}.tar.bz2 && \
#     rm bwa-${VERSION}.tar.bz2 && \
#     cd bwa-${VERSION} && \
#     make -j4 && \
#     make install && \
#     cd .. && \
#     rm -rf bwa-${VERSION}

WORKDIR /src
RUN wget https://github.com/lh3/bwa/archive/refs/heads/master.zip
RUN unzip master.zip && \
    rm master.zip && \
    cd bwa-master && \
    make -j4 && \
    install -D -t /usr/local/bin bwa && \
    cd .. && \
    rm -rf bwa-master

WORKDIR /data
