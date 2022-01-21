FROM alpine:3.15
RUN apk update && apk add --no-cache wget
RUN sh -c "$(wget -q ftp://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh -O -)"
ENV PATH="/root/edirect:${PATH}"
WORKDIR /data