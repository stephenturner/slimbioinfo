ARG VERSION="2.1.0"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache wget 
RUN wget -q https://github.com/shenwei356/seqkit/releases/download/v${VERSION}/seqkit_linux_386.tar.gz
RUN tar xzf seqkit_linux_386.tar.gz

FROM alpine:3.15
ARG VERSION
COPY --from=0 /seqkit /usr/local/bin/seqkit
WORKDIR /data
