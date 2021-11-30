FROM alpine:3.15

ARG VERSION="1.9"

RUN apk update && apk add --no-cache gcc make libc-dev ncurses-dev zlib-dev xz-dev bzip2-dev

WORKDIR /src
ADD https://github.com/samtools/bcftools/releases/download/${VERSION}/bcftools-${VERSION}.tar.bz2 /src
ADD https://github.com/samtools/htslib/releases/download/${VERSION}/htslib-${VERSION}.tar.bz2 /src

RUN tar -xjf bcftools-${VERSION}.tar.bz2 && \
    cd bcftools-${VERSION} && \
    make -j4 && \
    make install && \
    cd /src && \
    rm -rf bcftools-${VERSION} rm bcftools-${VERSION}.tar.bz2

RUN tar -xjf htslib-${VERSION}.tar.bz2 && \
    cd htslib-${VERSION} && \
    make -j4 && \
    make install && \
    cd /src && \
    rm -rf htslib-${VERSION} htslib-${VERSION}.tar.bz2

WORKDIR /data
