ARG VERSION="v2.0.0-rc12"

FROM alpine:3.15
ARG VERSION
RUN apk update && apk add --no-cache wget
WORKDIR /src
RUN wget -q https://github.com/seppinho/mutserve/releases/download/${VERSION}/mutserve.zip 
RUN unzip mutserve.zip
RUN rm mutserve.zip

FROM alpine:3.15
RUN apk add --no-cache bash openjdk8-jre
COPY --from=0 /src /src
ENV PATH="/src:${PATH}"
WORKDIR /data
ENTRYPOINT ["mutserve"]