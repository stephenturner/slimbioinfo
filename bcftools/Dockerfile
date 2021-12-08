ARG VERSION="1.9"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache gcc make libc-dev ncurses-dev zlib-dev xz-dev bzip2-dev
RUN wget -q https://github.com/samtools/bcftools/releases/download/${VERSION}/bcftools-${VERSION}.tar.bz2 && \
    tar -xjf bcftools-${VERSION}.tar.bz2 && \
    cd bcftools-${VERSION} && \
    make -j4 && \
    make install
RUN wget -q https://github.com/samtools/htslib/releases/download/${VERSION}/htslib-${VERSION}.tar.bz2 && \
    tar -xjf htslib-${VERSION}.tar.bz2 && \
    cd htslib-${VERSION} && \
    make -j4 && \
    make install

FROM alpine:3.15
RUN apk update && apk add xz-dev bzip2-dev
COPY --from=0 /usr/local/bin/bcftools /usr/local/bin/bcftools
COPY --from=0 /usr/local/bin/tabix /usr/local/bin/tabix
COPY --from=0 /usr/local/bin/bgzip /usr/local/bin/bgzip
WORKDIR /data
