ARG VERSION="2.23"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache wget make gcc zlib-dev libc-dev
RUN wget -q https://github.com/lh3/minimap2/releases/download/v${VERSION}/minimap2-${VERSION}.tar.bz2 && \
    tar xjf minimap2-${VERSION}.tar.bz2 && \
    cd minimap2-${VERSION} && \
    make -j4

FROM alpine:3.15
ARG VERSION
COPY --from=0 minimap2-${VERSION}/minimap2 /usr/local/bin/minimap2
WORKDIR /data
