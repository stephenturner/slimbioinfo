ARG VERSION="1.3.5"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache gcc g++ make libc-dev zlib-dev wget boost-dev
RUN wget -q https://github.com/williamslab/ped-sim/archive/refs/tags/v${VERSION}.tar.gz && \
    tar xzf v${VERSION}.tar.gz && \
    cd ped-sim-${VERSION} && \
    make && \
    make distribute

FROM alpine:3.15
ARG VERSION
COPY --from=0 /ped-sim-${VERSION}/ped-sim /usr/local/bin/ped-sim
COPY --from=0 /ped-sim-${VERSION}/interfere /data/interfere
WORKDIR /data
