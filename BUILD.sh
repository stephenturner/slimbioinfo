#!/bin/bash
docker build --no-cache -t stephenturner/akt akt/
docker build --no-cache -t stephenturner/bcftools bcftools/
docker build --no-cache -t stephenturner/bedtools bedtools/
docker build --no-cache -t stephenturner/bwa bwa/
docker build --no-cache -t stephenturner/core core/
docker build --no-cache -t stephenturner/dragmap dragmap/
docker build --no-cache -t stephenturner/gatk gatk/
docker build --no-cache -t stephenturner/htslib htslib/
docker build --no-cache -t stephenturner/kraken2 kraken2/
docker build --no-cache -t stephenturner/minimap2 minimap2/
docker build --no-cache -t stephenturner/ped-sim ped-sim/
docker build --no-cache -t stephenturner/rasusa rasusa/
docker build --no-cache -t stephenturner/seqkit seqkit/
docker build --no-cache -t stephenturner/snpeff snpeff/
docker build --no-cache -t stephenturner/vt vt/
