#! /bin/bash

# Build Docker image dari berkas Dockerfile
docker build -t ghcr.io/yogypratama/karsajobs:latest .
 
# Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u yogypratama --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/yogypratama/karsajobs:latest