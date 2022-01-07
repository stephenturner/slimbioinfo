ARG VERSION="0.6.0"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache wget 
RUN wget -q https://github.com/mbhall88/rasusa/releases/download/${VERSION}/rasusa-${VERSION}-x86_64-unknown-linux-musl.tar.gz
RUN tar xzf rasusa-${VERSION}-x86_64-unknown-linux-musl.tar.gz

FROM alpine:3.15
ARG VERSION
COPY --from=0 /rasusa-${VERSION}-x86_64-unknown-linux-musl/rasusa /usr/local/bin/rasusa
WORKDIR /data
ENTRYPOINT ["rasusa"]