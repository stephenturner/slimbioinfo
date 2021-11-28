FROM alpine:3.15

# ARG VERSION="0.7.17"
ARG VERSION="3ddd7b87d41f89a404d95f083fb37c369f70d783"

RUN apk update && apk add --no-cache wget gcc make libc-dev zlib-dev

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

# Download master@3ddd7b87d41f89a404d95f083fb37c369f70d783
WORKDIR /src
RUN wget https://github.com/lh3/bwa/archive/${VERSION}.zip
RUN unzip ${VERSION}.zip && \
    rm ${VERSION}.zip && \
    cd bwa-${VERSION} && \
    make -j4 && \
    install -D -t /usr/local/bin bwa && \
    cd .. && \
    rm -rf bwa-${VERSION} && \ 
    echo ${VERSION} > /root/VERSION

WORKDIR /data
