# !/bin/bash

# build docker image dari Dockerfile dengan penamaan format
# Github Packages yaitu shipping-service dengan tag latest
docker build -t ghcr.io/kusumaningrat/order-service .

# otentikasi ke Github Container Registry menggunakan username kusumaningrat
# beserta token/password yang di ambil dari environment variable
echo $TOKEN | docker login ghcr.io -u kusumaningrat --password-stdin

# menyimpan/push docker image yang sudah di build ke Github Container Registry
docker push ghcr.io/kusumaningrat/order-service