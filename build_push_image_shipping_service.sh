#!/bin/bash

docker build -t shipping-service:latest . #Membuat Docker image dari Dockerfile

docker images #Melihat list image di lokal komputer

docker tag shipping-service:latest ghcr.io/arifandiwahyu/shipping-service:latest  #Mengubah nama image karsajob:latest

cat pat.txt | docker login -u arifandiwahyu --password-stdin ghcr.io #Login ke Github Packages

docker push ghcr.io/arifandiwahyu/shipping-service:latest #Mengupload image ke Github Packages