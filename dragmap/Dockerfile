FROM ubuntu:20.04

ARG VERSION="1.2.1"

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=America/New_York

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    gcc \
    g++ \
    make \
    wget \
    libboost-all-dev

WORKDIR /src
RUN wget -q https://github.com/Illumina/DRAGMAP/archive/refs/tags/${VERSION}.tar.gz && \
    tar xzf ${VERSION}.tar.gz && \
    cd DRAGMAP-${VERSION} && \
    HAS_GTEST=0 make && \
    HAS_GTEST=0 make install && \
    cd .. && \
    rm -rf DRAGMAP-${VERSION} ${VERSION}.tar.gz && \
    echo ${VERSION} > /root/VERSION

WORKDIR /data
