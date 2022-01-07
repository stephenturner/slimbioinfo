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
USERNAME="stephenturner"
echo '#!/bin/bash' > BUILD.sh
find . -type f -name "Dockerfile" -exec dirname {} \; \
    | sort \
    | sed  's/\.\///g' \
    | xargs -I{} echo "docker build --no-cache -t ${USERNAME}/{} {}/" \
    >> BUILD.sh
bash build.sh
```

## Usage

Run an executable from the image mounting the local current working directory to `/data`:

```sh
docker run --rm -u $(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd) imagename
```

Create an alias to make this a little easier. Put this in your `~/.bashrc`:

```sh
function docker_run { docker run --rm -u $(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd) "$@"; }
```

Then: 

```sh
docker_run imagename
```

Run multiple piped commands inside the container. Example with bcftools assuming `example.vcf.gz` lives in the current working directory:

```sh
docker run --rm -u $(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd) --entrypoint /bin/ash stephenturner/bcftools -c \
    "bcftools view -r 1 example.vcf.gz | bcftools query -f '%CHROM\t%POS\t[%TGT]\n'"
```

Step inside a container:

```sh
docker run --rm -it --entrypoint /bin/ash imagename
```
