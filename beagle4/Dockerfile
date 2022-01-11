FROM alpine:3.15

# Version 4.0: https://faculty.washington.edu/browning/beagle/b4_0.html
ARG VERSION="r1399"

WORKDIR /data
RUN apk add --update --no-cache openjdk8-jre wget && \
    wget -q http://faculty.washington.edu/browning/beagle/beagle.${VERSION}.jar && \
    ln -s beagle.${VERSION}.jar beagle4.jar


ENTRYPOINT ["java", "-Xmx10g", "-jar", "/data/beagle4.jar"]