#!/bin/bash
echo "Criando as imagens......"

docker build -t puppim/mysql:2.0 database/.
docker build -t puppim/backend-lab-apache:2.1 backend/.

echo "Push imagens....."

docker push puppim/apache:1.2 
docker push puppim/backend-lab-apache:2.1


echo "Subindo os serviços no k8s....."

kubectl apply -f ./service.yml


echo "Deploy na k8s....."

kubectl apply -f ./deployment.yml



