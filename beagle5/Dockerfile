FROM alpine:3.15

# Version 5.2: http://faculty.washington.edu/browning/beagle/beagle.html#download
ARG VERSION="28Jun21.220"

WORKDIR /data
RUN apk add --update --no-cache openjdk8-jre wget && \
    wget -q http://faculty.washington.edu/browning/beagle/beagle.${VERSION}.jar && \
    wget -q http://faculty.washington.edu/browning/beagle/bref3.${VERSION}.jar && \
    ln -s beagle.${VERSION}.jar beagle.jar && \
    ln -s bref3.${VERSION}.jar bref3.jar


ENTRYPOINT ["java", "-Xmx10g", "-jar", "/data/beagle.jar"]