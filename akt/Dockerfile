ARG VERSION="0.3.3"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache wget make g++ libc-dev zlib-dev
RUN wget -q https://github.com/Illumina/akt/archive/refs/tags/v${VERSION}.tar.gz && \
    tar xzf v${VERSION}.tar.gz && \
    cd akt-${VERSION} && \
    make -j4

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache libgomp libstdc++
COPY --from=0 /akt-${VERSION}/akt /usr/local/bin/akt
WORKDIR /data
ENTRYPOINT ["akt"]