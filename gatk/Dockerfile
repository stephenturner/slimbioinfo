FROM alpine:3.15

ARG VERSION="4.2.3.0"

RUN apk update && apk add --no-cache openjdk8 python3 && ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /src
ADD https://github.com/broadinstitute/gatk/releases/download/${VERSION}/gatk-${VERSION}.zip /src
RUN unzip gatk-${VERSION}.zip && rm gatk-${VERSION}.zip && ln -s /src/gatk-${VERSION}/gatk-package-${VERSION}-local.jar /src/gatk.jar
ENV PATH="/src/gatk-${VERSION}:${PATH}"

WORKDIR /data