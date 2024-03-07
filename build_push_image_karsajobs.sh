#! /bin/bash
# build docker image
docker build -t ghcr.io/therinji/karsajobs:latest .
# export PAT=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
echo $PAT | docker login ghcr.io --username therinji --password-stdin
# mengunggah image ke GitHub Packages
docker push ghcr.io/therinji/karsajobs:latest
