ARG VERSION="1.5.1"

FROM alpine:3.15
ARG VERSION
RUN apk add --update --no-cache openjdk8-jre wget
RUN wget -q -O /fgbio.jar https://github.com/fulcrumgenomics/fgbio/releases/download/${VERSION}/fgbio-${VERSION}.jar 

WORKDIR /data
ENTRYPOINT ["java", "-jar", "-Xmx8g", "/fgbio.jar"]