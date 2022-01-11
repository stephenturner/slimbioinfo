FROM alpine:3.15

# Version 4.0: https://faculty.washington.edu/browning/beagle/b4_0.html
ARG V40="r1399"
# Version 4.1: https://faculty.washington.edu/browning/beagle/b4_1.html
ARG V41="27Jan18.7e1"
# Version 5.2: http://faculty.washington.edu/browning/beagle/beagle.html
ARG V52="28Jun21.220"

RUN apk add --update --no-cache openjdk8-jre wget && \
    wget -q http://faculty.washington.edu/browning/beagle/beagle.${V40}.jar -O beagle40.jar && \
    wget -q http://faculty.washington.edu/browning/beagle/beagle.${V41}.jar -O beagle41.jar && \
    wget -q http://faculty.washington.edu/browning/beagle/beagle.${V52}.jar -O beagle52.jar


ENTRYPOINT ["java", "-Xmx10g", "-jar"]

# Usage:
# docker run --rm -u $(id -u):$(id -g) -v $(pwd):/data stephenturner/beagle /beagle40.jar
# docker run --rm -u $(id -u):$(id -g) -v $(pwd):/data stephenturner/beagle /beagle41.jar
# docker run --rm -u $(id -u):$(id -g) -v $(pwd):/data stephenturner/beagle /beagle52.jar