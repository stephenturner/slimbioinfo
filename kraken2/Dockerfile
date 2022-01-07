ARG VERSION="2.1.2"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add build-base make bash perl wget
RUN wget -q https://github.com/DerrickWood/kraken2/archive/refs/tags/v${VERSION}.tar.gz && \
    tar -xf v${VERSION}.tar.gz && \
    cd kraken2-${VERSION} && \
    ./install_kraken2.sh /usr/local/bin/

FROM alpine:3.15
ARG VERSION
RUN apk add --no-cache bash perl libstdc++ libgcc libgomp
COPY --from=0 /usr/local/bin /usr/local/bin
WORKDIR /data
ENTRYPOINT ["kraken2"]