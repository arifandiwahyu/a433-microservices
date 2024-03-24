#!/bin/bash

docker build -t karsajobs:latest . #Membuat Docker image dari Dockerfile

docker images #Melihat list image di lokal komputer

docker tag karsajobs:latest ghcr.io/arifandiwahyu/karsajobs:latest  #Mengubah nama image karsajob:latest

cat pat.txt | docker login -u arifandiwahyu --password-stdin ghcr.io #Login ke Github Packages

docker push ghcr.io/arifandiwahyu/karsajobs:latest #Mengupload image ke Github Packages