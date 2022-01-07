ARG VERSION="latest"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache openjdk8-jre
RUN wget -q https://snpeff.blob.core.windows.net/versions/snpEff_${VERSION}_core.zip && \
    unzip snpEff_${VERSION}_core.zip && \
    sed -i 's/bash/ash/' /snpEff/scripts/snpSift && \
    sed -i 's/bash/ash/' /snpEff/scripts/snpEff && \
    rm -f snpEff_${VERSION}_core.zip
ENV PATH="/snpEff/scripts:${PATH}"

WORKDIR /data
ENTRYPOINT ["snpSift"]