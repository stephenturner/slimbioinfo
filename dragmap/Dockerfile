FROM alpine:3.15

ARG VERSION="1.2.1"

RUN apk update && apk add --no-cache gcc g++ make boost-dev bash

WORKDIR /src
ADD https://github.com/Illumina/DRAGMAP/archive/refs/tags/${VERSION}.tar.gz /src
RUN tar xzf ${VERSION}.tar.gz && \
    cd DRAGMAP-${VERSION} && \
    # HAS_GTEST=0 make -j4 && \
    # make install && \
    echo ${VERSION} > /root/VERSION

WORKDIR /data
