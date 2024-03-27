#!/bin/bash

docker build -t order-service:latest . #Membuat Docker image dari Dockerfile

docker images #Melihat list image di lokal komputer

docker tag order-service:latest ghcr.io/arifandiwahyu/order-service:latest  #Mengubah nama image order-service:latest

cat pat.txt | docker login -u arifandiwahyu --password-stdin ghcr.io #Login ke Github Packages

docker push ghcr.io/arifandiwahyu/order-service:latest #Mengupload image ke Github Packages