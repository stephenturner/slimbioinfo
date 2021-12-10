FROM alpine:3.15

ARG VERSION="4.2.3.0"

RUN apk add --update --no-cache openjdk8-jre python3 wget && ln -sf python3 /usr/bin/python

WORKDIR /src
RUN wget -q https://github.com/broadinstitute/gatk/releases/download/${VERSION}/gatk-${VERSION}.zip && \
    unzip gatk-${VERSION}.zip && \
    rm -rf gatk-${VERSION}.zip gatk-${VERSION}/gatk-package-${VERSION}-spark.jar gatk-${VERSION}/gatkdoc

ENV PATH="/src/gatk-${VERSION}:${PATH}"

WORKDIR /data