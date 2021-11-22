FROM alpine:3.15

ARG VERSION="1.9"

RUN apk update && apk add gcc make libc-dev ncurses-dev bzip2-dev zlib-dev xz-dev wget

WORKDIR /src
RUN wget https://github.com/samtools/bcftools/releases/download/${VERSION}/bcftools-${VERSION}.tar.bz2
RUN tar -xjf bcftools-${VERSION}.tar.bz2 && \
    rm bcftools-${VERSION}.tar.bz2 && \
    cd bcftools-${VERSION} && \
    make -j4 && \
    make install && \
    cd .. && \
    rm -rf bcftools-${VERSION}

WORKDIR /src
RUN wget https://github.com/samtools/htslib/releases/download/${VERSION}/htslib-${VERSION}.tar.bz2
RUN tar -xjf htslib-${VERSION}.tar.bz2 && \
    rm htslib-${VERSION}.tar.bz2 && \
    cd htslib-${VERSION} && \
    make -j4 && \
    make install && \
    cd .. && \
    rm -rf htslib-${VERSION}

RUN echo 'alias l="ls -lh --color=always"' >> /etc/profile
RUN echo 'alias u="cd ..; l"' >> /etc/profile
ENV ENV="/etc/profile"

WORKDIR /data
