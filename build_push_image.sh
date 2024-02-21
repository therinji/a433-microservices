#! /bin/bash
# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .
# Baris pemisah
echo -e "\n"
# Melihat daftar image di lokal
docker images
# Baris pemisah
echo -e "\n"
# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/therinji/item-app:v1
# Baris pemisah
echo -e "\n"
# Login ke GitHub Packages
# export PAT=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
echo $PAT | docker login ghcr.io --username therinji --password-stdin
# Mengunggah image ke GitHub Packages
docker push ghcr.io/therinji/item-app:v1