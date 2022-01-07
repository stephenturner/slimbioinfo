FROM alpine:3.15
RUN apk update && apk add git make gcc g++ musl-dev zlib-dev bzip2-dev xz-dev curl-dev
RUN git clone https://github.com/atks/vt.git && \
    cd vt && \
    git submodule update --init --recursive && \
    make

FROM alpine:3.15
RUN apk update && apk add --no-cache curl libstdc++ xz-dev bzip2-dev 
COPY --from=0 /vt/vt /usr/local/bin/vt
WORKDIR /data
ENTRYPOINT ["vt"]