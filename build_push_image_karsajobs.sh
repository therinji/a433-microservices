#! /bin/bash
# build docker image
docker build -t ghcr.io/therinji/karsajobs:latest .
# login ke Github Packages
echo $PAT | docker login ghcr.io --username therinji --password-stdin
# mengunggah image ke GitHub Packages
docker push ghcr.io/therinji/karsajobs:latest
