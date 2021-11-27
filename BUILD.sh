#!/bin/bash

docker build --no-cache -t stephenturner/bcftools bcftools/
docker build --no-cache -t stephenturner/minimap2 minimap2/
docker build --no-cache -t stephenturner/akt akt/
docker build --no-cache -t stephenturner/bwa bwa/
docker build --no-cache -t stephenturner/ped-sim ped-sim/
docker build --no-cache -t stephenturner/bedtools bedtools/
