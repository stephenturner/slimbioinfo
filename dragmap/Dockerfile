ARG VERSION="1.2.1"

FROM ubuntu:20.04
ARG VERSION
ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=America/New_York
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    gcc \
    g++ \
    make \
    wget \
    libboost-all-dev
RUN wget -q https://github.com/Illumina/DRAGMAP/archive/refs/tags/${VERSION}.tar.gz && \
    tar xzf ${VERSION}.tar.gz && \
    cd DRAGMAP-${VERSION} && \
    HAS_GTEST=0 make && \
    HAS_GTEST=0 make install

FROM ubuntu:20.04
ARG VERSION
ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=America/New_York
RUN apt-get update && apt-get install -y libboost-all-dev
COPY --from=0 /usr/bin/dragen-os /usr/bin/dragen-os
WORKDIR /data
