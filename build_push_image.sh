#!/bin/bash

docker build -t item-app:v1 . #Membuat Docker image dari Dockerfile

docker images #Melihat list image di lokal komputer

docker tag item-app:v1 ghcr.io/arifandiwahyu/item-app:v1 #Mengubah nama image agar sesuai dengan format Github Package

cat pat.txt | docker login -u arifandiwahyu --password-stdin ghcr.io #Login ke Github Packages

docker push ghcr.io/arifandiwahyu/item-app:v1 #Mengupload image ke Github Packages