ARG VERSION_HTSLIB="1.9"

FROM alpine:3.15
ARG VERSION_HTSLIB
RUN apk update && apk add --no-cache gcc make libc-dev ncurses-dev zlib-dev xz-dev bzip2-dev
RUN wget -q https://github.com/samtools/bcftools/releases/download/${VERSION_HTSLIB}/bcftools-${VERSION_HTSLIB}.tar.bz2 && \
    tar -xjf bcftools-${VERSION_HTSLIB}.tar.bz2 && \
    cd bcftools-${VERSION_HTSLIB} && \
    make -j4 && \
    make install
RUN wget -q https://github.com/samtools/htslib/releases/download/${VERSION_HTSLIB}/htslib-${VERSION_HTSLIB}.tar.bz2 && \
    tar -xjf htslib-${VERSION_HTSLIB}.tar.bz2 && \
    cd htslib-${VERSION_HTSLIB} && \
    make -j4 && \
    make install
RUN wget -q https://github.com/samtools/samtools/releases/download/${VERSION_HTSLIB}/samtools-${VERSION_HTSLIB}.tar.bz2 && \
    tar -xjf samtools-${VERSION_HTSLIB}.tar.bz2 && \
    cd samtools-${VERSION_HTSLIB} && \
    ./configure --without-curses && \
    make -j4 && \
    make install

FROM alpine:3.15
RUN apk update && apk add xz-dev bzip2-dev
COPY --from=0 /usr/local/bin/tabix /usr/local/bin/tabix
COPY --from=0 /usr/local/bin/bgzip /usr/local/bin/bgzip
COPY --from=0 /usr/local/bin/bcftools /usr/local/bin/bcftools
COPY --from=0 /usr/local/libexec/bcftools /usr/local/libexec/bcftools
COPY --from=0 /usr/local/bin/samtools /usr/local/bin/samtools
COPY --from=0 /usr/local/bin/wgsim /usr/local/bin/wgsim
WORKDIR /data
