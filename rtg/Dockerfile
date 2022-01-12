ARG VERSION="3.12.1"

FROM alpine:3.15
ARG VERSION
RUN apk add --update --no-cache openjdk8-jre wget bash
RUN wget -q https://github.com/RealTimeGenomics/rtg-tools/releases/download/${VERSION}/rtg-tools-${VERSION}-nojre.zip
RUN unzip -q rtg-tools-${VERSION}-nojre.zip 
RUN echo no | bash ./rtg-tools-${VERSION}/rtg version > /dev/null 2&>1

FROM alpine:3.15
ARG VERSION
RUN apk add --update --no-cache openjdk8-jre bash
COPY --from=0 /rtg-tools-${VERSION}/* /usr/local/bin/
WORKDIR /data
ENTRYPOINT ["rtg"]