FROM alpine:3.15

ARG VERSION="0.3.2"

RUN apk update && apk add --no-cache wget

RUN wget -q https://github.com/brentp/mosdepth/releases/download/v${VERSION}/mosdepth -O /usr/local/bin/mosdepth && \
    chmod 755 /usr/local/bin/mosdepth && \
    echo ${VERSION} > /root/VERSION

WORKDIR /data
ENTRYPOINT ["mosdepth"]