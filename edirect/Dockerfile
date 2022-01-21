FROM alpine:3.15
RUN apk update && apk add wget
RUN sh -c "$(wget -q ftp://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh -O -)"

FROM alpine:3.15
COPY --from=0 /root/edirect/ /usr/local/bin/
WORKDIR /data