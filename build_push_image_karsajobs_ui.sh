#! /bin/bash
# build docker image
docker build -t ghcr.io/therinji/karsajobs-ui:latest .
# export PAT=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
echo $PAT | docker login ghcr.io --username therinji --password-stdin
# mengunggah image ke GitHub Packages
docker push ghcr.io/therinji/karsajobs-ui:latest
