FROM alpine:3.15

ARG VERSION="v2.30.0"

RUN apk update && apk add wget

RUN wget https://github.com/arq5x/bedtools2/releases/download/${VERSION}/bedtools.static.binary -O /usr/local/bin/bedtools
RUN chmod 755 /usr/local/bin/bedtools

RUN echo 'alias l="ls -lh --color=always"' >> /etc/profile
RUN echo 'alias u="cd ..; l"' >> /etc/profile
ENV ENV="/etc/profile"

WORKDIR /data
