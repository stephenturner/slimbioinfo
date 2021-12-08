# slimbioinfo

Slim Docker images for bioinformatics tools built on Alpine Linux (mostly). 

## Building

Build a single image:

```sh
docker build --no-cache -t imagename
```

Push to Docker Hub:

```sh
# docker login
docker tag imagename username/imagename
docker push username/imagename
```

Build all images:

```sh
find . -type f -name "Dockerfile" -exec dirname {} \; \
    | sed  's/\.\///g' \
    | xargs -I{} echo "docker build --no-cache -t {} {}/" \
    > BUILD.sh
bash build.sh
```

## Usage

Run an executable from the image mounting the local current working directory to `/data`:

```sh
docker run --rm -u $(id -u):$(id -g) -v $(pwd):/data imagename executable
```

Run multiple piped commands inside the container. Example with bcftools assuming `example.vcf.gz` lives in the current working directory:

```sh
docker run -u $(id -u):$(id -g) --rm -v $(pwd):/data stephenturner/bcftools /bin/ash -c \
    "bcftools view -r 1 example.vcf.gz | bcftools query -f '%CHROM\t%POS\t[%TGT]\n'"
```

Step inside a running container:

```sh
docker run --rm -it imagename /bin/ash
```
