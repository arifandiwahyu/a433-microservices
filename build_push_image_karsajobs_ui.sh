#!/bin/bash

docker build -t karsajobs_ui:latest . #Membuat Docker image dari Dockerfile

docker images #Melihat list image di lokal komputer

docker tag karsajobs_ui:latest ghcr.io/arifandiwahyu/karsajobs_ui:latest  #Mengubah nama image karsajob_ui:latest

cat pat.txt | docker login -u arifandiwahyu --password-stdin ghcr.io #Login ke Github Packages

docker push ghcr.io/arifandiwahyu/karsajobs_ui:latest #Mengupload image ke Github Packages