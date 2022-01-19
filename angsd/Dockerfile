ARG VERSION="0.935"
ARG VERSION_HTSLIB="1.11"

FROM alpine:3.15
ARG VERSION
ARG VERSION_HTSLIB
RUN apk update && apk add --no-cache gcc g++ make libc-dev ncurses-dev zlib-dev xz-dev bzip2-dev curl-dev git
RUN wget -q https://github.com/samtools/htslib/releases/download/${VERSION_HTSLIB}/htslib-${VERSION_HTSLIB}.tar.bz2 && \
    tar -xjf htslib-${VERSION_HTSLIB}.tar.bz2 && \
    cd htslib-${VERSION_HTSLIB} && \
    make -j4
RUN git clone -b ${VERSION} https://github.com/ANGSD/angsd.git && \
    cd angsd && \
    make HTSSRC=../htslib-${VERSION_HTSLIB}

FROM alpine:3.15
ARG VERSION
ARG VERSION_HTSLIB
RUN apk update && apk add --no-cache xz-dev bzip2-dev curl-dev libstdc++
COPY --from=0 /angsd/angsd /usr/local/bin/angsd
ENTRYPOINT ["angsd"]