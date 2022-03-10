FROM alpine:3.15

ARG VERSION="2.4.40"

RUN apk update && apk add --no-cache wget && \
    wget -q https://github.com/bedops/bedops/releases/download/v${VERSION}/bedops_linux_x86_64-v${VERSION}.tar.bz2 && \
    tar xjf bedops_linux_x86_64-v${VERSION}.tar.bz2 -C /usr/local && \
    rm bedops_linux_x86_64-v${VERSION}.tar.bz2 && \
    echo ${VERSION} > /root/VERSION

WORKDIR /data